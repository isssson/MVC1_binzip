package binzip.findzip;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import binzip.utils.StringUtils;

public class FindzipDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public FindzipDAO() {
		System.out.println("findzipDAO 호출");
	}
	
	/**총 게시물 수 반환 관련 메서드*/
	public int getTotalCnt() {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "SELECT count(*) FROM binzip_host_bbs";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			
			int count = rs.getInt(1);
			return count == 0 ? 1 : count;
		} catch (Exception e) {
			e.printStackTrace();
			return 1;
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}

	//리스트출력관련 메서드
	public ArrayList<FindzipDTO> findZipListNew(FindzipDTO params) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String searchGb = params.getSearchGb();
			
			int start = (params.getCp() - 1) * params.getListSize() + 1;
			int end = params.getCp() * params.getListSize();
			int pCnt = 1;
			
			System.out.println("체크인 날짜 : " + params.getInDate());
			
			String sql = "";
			
					 sql += " SELECT *                                                           \n";
					 sql += "  FROM                                                              \n";
					 sql += "      (SELECT ROWNUM AS rnum, a.*                                   \n";
					 sql += "      FROM                                                          \n";
					 sql += "          (SELECT *                                                 \n";
					 sql += "          FROM                                                      \n";
					 sql += "              (                                                     \n";
		             sql += "                  WITH TAB_PPL AS (                                 \n";
		             sql += "                          SELECT BINZIP_HOST_BBS_IDX AS IDX         \n";
		             sql += "                               , COUNT(*) CNT                       \n";
		             sql += "                            FROM BINZIP_RESERVE                     \n";       
		             sql += "                           GROUP BY BINZIP_HOST_BBS_IDX             \n";       
		             sql += "                    ),                                              \n";
		             sql += "                    TAB_IMG AS (                                    \n";
		             sql += "                        SELECT BINZIP_HOST_BBS_IDX AS IDX           \n";
		             sql += "                             , MAX(IMGPATH) AS IMGPATH              \n";
		             sql += "                          FROM BINZIP_HOST_BBS_IMGS                 \n";
		             sql += "                         GROUP BY BINZIP_HOST_BBS_IDX               \n";
		             sql += "                    )                                               \n";
		             sql += "                    SELECT a.idx                                    \n";
		             sql += "                         , b.imgpath                                \n";
		             sql += "                         , a.binzip_member_id                       \n";
		             sql += "                         , a.host_name                              \n";
		             sql += "                         , a.host_email                             \n";
		             sql += "                         , a.host_phone                             \n";
		             sql += "                         , a.host_bank                              \n";
		             sql += "                         , a.host_acnumber                          \n";
		             sql += "                         , a.zipname                                \n";
		             sql += "                         , a.ziptype                                \n";
		             sql += "                         , a.zipaddr                                \n";
		             sql += "                         , a.cost                                   \n";
		             sql += "                         , a.peoplenum                              \n";
		             sql += "                         , a.todaydate                              \n";
		             sql += "                         , a.contents                               \n";
		             sql += "                         , a.host_bbs_startdate                     \n";
		             sql += "                         , a.host_bbs_enddate                       \n";
		             sql += "                         , NVL(c.cnt,0) AS CNT                      \n";
		             sql += "                    FROM BINZIP_HOST_BBS A, TAB_IMG B, TAB_PPL C    \n";                                          
		             sql += "                    WHERE A.IDX = B.IDX(+)                          \n";
		             sql += "                      AND A.IDX = C.IDX(+)					         \n";
					 
		             //예약가능한 집만 출력 쿼리	
					 if(StringUtils.isNotEmpty(params.getInDate()) || StringUtils.isNotEmpty(params.getOutDate())) {
						 sql += "              AND NOT EXISTS                                                             	 \n";
						 sql += "                  (SELECT 1                                                   				 \n";
						 sql += "                  FROM BINZIP_RESERVE x                                					 \n";
						 sql += "                  WHERE 1=1 																 \n";
						 sql += "                    AND x.BINZIP_HOST_BBS_IDX = a.idx                                       \n";
						 if(StringUtils.isNotEmpty(params.getInDate())) {
					     sql += "                  AND RESERVE_STARTDATE >= TO_DATE('"+params.getInDate()+"', 'YYYY-MM-DD')  \n";
						 }
						 if(StringUtils.isNotEmpty(params.getOutDate())) {                                                                   
					     sql +=	"                  AND RESERVE_ENDDATE <= TO_DATE('"+params.getOutDate()+"', 'YYYY-MM-DD')   \n";
						 }
						 sql += "                  )                                                                         \n";                                    
					 }
					     sql += "              )                                                                             \n";
					     sql += "              WHERE 1=1                                                                     \n";
					    
					    //인원수
					    if(params.getPeoplenum() > 1 ) {
				    		sql += "AND peoplenum <= "+params.getPeoplenum()+"	       \n"; 
				    	}                                                              
					                                                                   
					    //숙소 유형                                                    
				    	if(StringUtils.isNotEmpty(params.getZiptype())) {              
				    		sql += "AND ziptype = '" + params.getZiptype() + "'		   \n";
				    	}                                                              
				    	                                                               
				    	//스팟기준                                                     
				    	if(StringUtils.isNotEmpty(params.getZipaddr())) {              
				    		sql += "AND zipaddr LIKE '%" + params.getZipaddr() + "%'   \n";
				    	} 
				    	
				    	//집이름 기준                                                     
				    	if(StringUtils.isNotEmpty(params.getZipname())) {              
				    		sql += "AND zipname LIKE '%" + params.getZipname() + "%'   \n";
				    	}  
				    	
				    	//집가격 검색 (이하)
				    	if(params.getCost() != 0 && params.getCost() != 500000) {              
				    		sql += "AND cost <= '" + params.getCost() + "' 	  		   \n";
				    	}else if (params.getCost() != 0 && params.getCost() == 500000) {
				    		sql += "AND cost >= '" + params.getCost() + "' 	  		   \n";
				    	}
					                                                                   
				    	//인기순                                                       
				    	if("popular".equals(searchGb)) {                               
				    		sql += "ORDER BY CNT DESC  						           \n";
				    	}                                                              
					    //가격 낮은순                                                  
				    	else if("low".equals(searchGb)) {                              
					    	sql += "ORDER BY cost ASC  						           \n";
					    }                                                              
					    //가격 높은순                                                  
					    else if("high".equals(searchGb)) {                             
					    	sql += "ORDER BY cost DESC 						           \n";
					    }                                                              
					    //디폴트(최신순)                                               
					    else {                                                         
					    	sql += "ORDER BY idx DESC  						   	       \n";
					    }                                                              
					 sql += "          ) a                                             \n";
					 sql += "      ) b                                                 \n";
					 sql += "  WHERE rnum >= "+ start +" AND rnum <= "+ end +"         \n";
			                                                                           
			System.out.println("인원 : " + params.getPeoplenum());		
			System.out.println("::: QUERY START : \n" + sql + "\n ::: QUERY END");
			
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			ArrayList<FindzipDTO> arr = new ArrayList<FindzipDTO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String binzip_member_id = rs.getString("binzip_member_id");
				String zipname = rs.getString("zipname");
				String ziptype = rs.getString("ziptype");
				String zipaddr = rs.getString("zipaddr");
				int cost = rs.getInt("cost");
				int peoplenum = rs.getInt("peoplenum");
				String imgpath = rs.getString("imgpath");
				
				FindzipDTO dto = new FindzipDTO(idx, binzip_member_id, zipname, ziptype, zipaddr, cost, peoplenum, imgpath);
				arr.add(dto);
			}
			return arr;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**본 내용 출력 관련 메서드*/
   public FindzipDTO findzipContent(int idx) {
	   
	   try {
		   conn = binzip.db.BinzipDB.getConn();
		   String sql = "select listagg(b.imgpath,',') within group (order by a.idx) as imgpath,a.* \n"
		   		+ "		from binzip_host_bbs a \n"
		   		+ "		left join binzip_host_bbs_imgs b \n"
		   		+ "		on a.idx = b.binzip_host_bbs_idx where a.idx='"+idx+"' \n"
		   		+ "		group by a.idx,a.binzip_member_id,a.host_name,a.host_email, \n"
		   		+ "		a.host_phone,a.host_bank,a.host_acnumber,a.zipname, \n"
		   		+ "		a.ziptype,a.zipaddr,a.cost,a.peoplenum,a.todaydate,a.contents, \n"
		   		+ "		a.host_bbs_startdate,a.host_bbs_enddate\n";
		   System.out.println("### INFO QUERY :::\n"+ sql);
		   ps = conn.prepareStatement(sql);
		   rs = ps.executeQuery();
		   FindzipDTO dto = null;
		   if(rs.next()) {
			   int bbs_idx = rs.getInt("idx");
			   String zipname = rs.getString("zipname");
			   String imgpath = rs.getString("imgpath");
			   int peoplenum = rs.getInt("peoplenum");
			   int cost = rs.getInt("cost");
			   String ziptype = rs.getString("ziptype");
			   String host_phone = rs.getString("host_phone");
			   String zipaddr = rs.getString("zipaddr");
			   String host_bbs_startdate = rs.getString("host_bbs_startdate");
			   String host_bbs_enddate = rs.getString("host_bbs_enddate");
			   String contents = rs.getString("contents");
			   
			   dto = new FindzipDTO();
			   dto.setImgpath(imgpath);
			   dto.setPeoplenum(peoplenum);
			   dto.setBbs_idx(bbs_idx);
			   dto.setContents(contents);
			   dto.setHost_phone(host_phone);
			   dto.setZipname(zipname);
			   dto.setZiptype(ziptype);
			   dto.setZipaddr(zipaddr);
			   dto.setHost_bbs_startdate(host_bbs_startdate);
			   dto.setHost_bbs_enddate(host_bbs_enddate);
			   dto.setCost(cost);
			   
		   }
		   return dto;
	   }catch(Exception e) {
		   e.printStackTrace();
		   return null;
	   }finally {
		   try {
			   if(rs!=null)rs.close();
			   if(ps!=null)ps.close();
			   if(conn!=null)conn.close();
		   }catch(Exception e2) {}
	   }
   }
   
   //게시글 해당하는 아이디 관련 메서드
   public String setHostId(int idx) {
	   
	   try {
		   conn = binzip.db.BinzipDB.getConn();
		   String sql = "select binzip_member_id from binzip_host_bbs where idx=?";
		   ps = conn.prepareStatement(sql);
		   ps.setInt(1, idx);
		   rs = ps.executeQuery();
		   rs.next();
		   return rs.getString(1);
	   }catch(Exception e) {
		   e.printStackTrace();
		   return null;
	   }finally {
		   try {
			   if(rs != null)rs.close();
			   if(ps != null)ps.close();
			   if(conn != null)conn.close();
		   }catch(Exception e2) {}
	   }		   
   }
	   
   /**main random bbs method*/   
   public ArrayList<FindzipDTO> showMainRandomZip() {
	   try {
		   conn = binzip.db.BinzipDB.getConn(); 
		   String sql = 
				   "SELECT *\n"
				   + "FROM\n"
				   + "    (SELECT ROWNUM AS rnum, a.*\n"
				   + "    FROM\n"
				   + "        (SELECT *\n"
				   + "        FROM\n"
				   + "            (WITH TAB_PPL AS\n"
				   + "                (SELECT BINZIP_HOST_BBS_IDX AS IDX\n"
				   + "                   , COUNT(*) CNT\n"
				   + "                FROM BINZIP_RESERVE\n"
				   + "                GROUP BY BINZIP_HOST_BBS_IDX\n"
				   + "                )\n"
				   + "            ,TAB_IMG AS\n"
				   + "                (SELECT BINZIP_HOST_BBS_IDX AS IDX\n"
				   + "                , MAX(IMGPATH) AS IMGPATH\n"
				   + "                FROM BINZIP_HOST_BBS_IMGS\n"
				   + "                GROUP BY BINZIP_HOST_BBS_IDX\n"
				   + "                )\n"
				   + "            SELECT a.idx\n"
				   + "             , b.imgpath\n"
				   + "             , a.binzip_member_id\n"
				   + "             , a.host_name\n"
				   + "             , a.host_email\n"
				   + "             , a.host_phone\n"
				   + "             , a.host_bank\n"
				   + "             , a.host_acnumber\n"
				   + "             , a.zipname\n"
				   + "             , a.ziptype\n"
				   + "             , a.zipaddr\n"
				   + "             , a.cost\n"
				   + "             , a.peoplenum\n"
				   + "             , a.todaydate\n"
				   + "             , a.contents\n"
				   + "             , a.host_bbs_startdate\n"
				   + "             , a.host_bbs_enddate \n"
				   + "             , NVL(c.cnt,0) AS CNT\n"
				   + "             , TRUNC (DBMS_RANDOM.VALUE (1, 500000)) RDN_CNT\n"
				   + "            FROM BINZIP_HOST_BBS A, TAB_IMG B, TAB_PPL C\n"
				   + "            WHERE A.IDX = B.IDX(+)\n"
				   + "            AND A.IDX = C.IDX(+)\n"
				   + "            )\n"
				   + "        ORDER BY RDN_CNT DESC\n"
				   + "        ) a\n"
				   + "    ) b    \n"
				   + "WHERE rnum >= 1 AND rnum <= 6";
		   
		   ps = conn.prepareStatement(sql);
		   rs = ps.executeQuery();
		   
		   ArrayList<FindzipDTO> arr = new ArrayList<FindzipDTO>();
		   while(rs.next()) {
			   int bbs_idx = rs.getInt("idx");
			   String zipname = rs.getString("zipname");
			   String imgpath = rs.getString("imgpath");
			   String zipaddr = rs.getString("zipaddr");
			   String contents = rs.getString("contents");
			   
			   FindzipDTO dto = new FindzipDTO(bbs_idx, sql, zipname, contents, zipaddr, bbs_idx, bbs_idx, imgpath);
			   arr.add(dto);
		   }
		   return arr;
		   
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				 if(rs != null)rs.close();
				 if(ps != null)ps.close();
				 if(conn != null)conn.close();
			} catch (Exception e2) {}
		}  
   }
   
   
   
}
