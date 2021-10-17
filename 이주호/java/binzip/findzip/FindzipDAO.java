package binzip.findzip;

import java.sql.*;
import java.util.*;

public class FindzipDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public FindzipDAO() {}
	
	/**총 게시물 수 반환 관련 메서드*/
	public int getTotalCnt() {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select count(*) from binzip_host_bbs";
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
	
	/**리스트 출력 관련 메서드*/
	   public ArrayList<FindzipDTO> findzipList(int cp, int listSize) { 
	      try {
	         conn = binzip.db.BinzipDB.getConn();
	         
	         int start = (cp - 1) * listSize + 1;
	         int end = cp * listSize;
	         
	         String sql = "select * from "
	               + "    (select rownum as rnum, a.* from "
	               + "        (SELECT LISTAGG(b.imgpath, ',') WITHIN GROUP (ORDER BY a.idx) AS imgpath, a.* "
	               + "        FROM binzip_host_bbs a "
	               + "        LEFT JOIN binzip_host_bbs_imgs b "
	               + "        ON a.idx = b.binzip_host_bbs_idx "
	               + "        GROUP BY a.IDX, a.BINZIP_MEMBER_ID, a.HOST_NAME, a.HOST_EMAIL, "
	               + "            a.HOST_PHONE, a.HOST_BANK, a.HOST_ACNUMBER, a.ZIPNAME, "
	               + "            a.ZIPTYPE, a.ZIPADDR, a.COST, a.PEOPLENUM, "
	               + "            a.TODAYDATE, a.CONTENTS, a.HOST_BBS_STARTDATE, a.HOST_BBS_ENDDATE "
	               + "        ) a "
	               + "    ) b "
	               + "where rnum >= ? and rnum <= ?";
	            
	         ps = conn.prepareStatement(sql);
	         ps.setInt(1, start);
	         ps.setInt(2, end);
	         rs = ps.executeQuery();
	         
	         ArrayList<FindzipDTO> arr = new ArrayList<FindzipDTO>();
	         while(rs.next()) {
	            int idx = rs.getInt("idx");
	            String zipname = rs.getString("zipname");
	            String ziptype = rs.getString("ziptype");
	            String zipaddr = rs.getString("zipaddr");
	            int cost = rs.getInt("cost");
	            int peoplenum = rs.getInt("peoplenum");
	            String imgpath = rs.getString("imgpath");
	            
	            FindzipDTO dto = new FindzipDTO(idx, zipname, ziptype, zipaddr, cost, peoplenum, imgpath);
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
			   String sql = "select listagg(b.imgpath,',') within group (order by a.idx) as imgpath,a.* "
			   		+ "		from binzip_host_bbs a "
			   		+ "		left join binzip_host_bbs_imgs b "
			   		+ "		on a.idx = b.binzip_host_bbs_idx where a.idx=? "
			   		+ "		group by a.idx,a.binzip_member_id,a.host_name,a.host_email, "
			   		+ "		a.host_phone,a.host_bank,a.host_acnumber,a.zipname, "
			   		+ "		a.ziptype,a.zipaddr,a.cost,a.peoplenum,a.todaydate,a.contents, "
			   		+ "		a.host_bbs_startdate,a.host_bbs_enddate";
			   ps = conn.prepareStatement(sql);
			   ps.setInt(1, idx);
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
				   java.sql.Date host_bbs_startdate = rs.getDate("host_bbs_startdate");
				   java.sql.Date host_bbs_enddate = rs.getDate("host_bbs_enddate");
				   String contents = rs.getString("contents");
				   
				   dto = new FindzipDTO(idx, zipname, imgpath, peoplenum, cost, ziptype, host_phone, zipaddr, host_bbs_startdate, host_bbs_enddate, contents);
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
				   if(rs!=null)rs.close();
				   if(ps!=null)ps.close();
				   if(conn!=null)conn.close();
			   }catch(Exception e2) {}
		   }		   
	   }
	  
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	}