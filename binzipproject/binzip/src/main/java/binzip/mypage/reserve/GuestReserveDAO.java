package binzip.mypage.reserve;

import java.sql.*;
import java.util.*;
import java.text.*;

public class GuestReserveDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	/**guestReservation.jsp 게스트 정보 불러오기**/
	public ArrayList<GuestReserveDTO> reserveInfo(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql = 
					"select * from      \n"
					+ "    (select i.*\n"
					+ "        ,r.binzip_member_id as r_id\n"
					+ "        ,r.RESERVE_STARTDATE\n"
					+ "        ,r.RESERVE_ENDDATE\n"
					+ "        ,r.PEOPLENUM as r_pnum\n"
					+ "        ,r.RESERVER_NAME\n"
					+ "        ,r.RESERVER_PHONE\n"
					+ "        ,r.PAYER\n"
					+ "        ,r.RESERVER_BANK\n"
					+ "        ,r.RESERVER_ACNUMBER\n"
					+ "        ,r.COST as r_cost\n"
					+ "        ,r.REQUEST\n"
					+ "        ,r.STATUS\n"
					+ "    from \n"
					+ "        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*\n"
					+ "        from binzip_host_bbs a\n"
					+ "        left join binzip_host_bbs_imgs b\n"
					+ "        on a.idx = b.binzip_host_bbs_idx\n"
					+ "        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,\n"
					+ "        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,\n"
					+ "        a.ziptype, a.zipaddr, a.cost, a.peoplenum,\n"
					+ "        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r\n"
					+ "    where i.idx = r.BINZIP_HOST_BBS_IDX)\n"
					+ "where status >= 0\n"
					+ "and status < 4\n"
					+ "and r_id = ?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			ArrayList<GuestReserveDTO> arr=new ArrayList<GuestReserveDTO>();
			
			while(rs.next()) {
				int bbsidx = rs.getInt("idx");
				String reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("r_pnum");
				int cost=rs.getInt("r_cost");
				int status=rs.getInt("status");
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				String imgpath=rs.getString("imgpath");
				String bbsid = rs.getString("binzip_member_id");
				GuestReserveDTO dto = new GuestReserveDTO(bbsidx, reserve_startdate, reserve_enddate, peoplenum, cost, status, zipname, ziptype, zipaddr, imgpath, bbsid);
				arr.add(dto);
			}
			return arr;
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
	
	
	
	
	
	
	
	
	
	
	/**showInfo.jsp에 모든정보출력**/
	public ArrayList<GuestReserveDTO> showInfo(int bbsidx, String reserve_startdate, int status) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql = 
					"select * from      \n"
					+ "    (select i.*\n"
					+ "        ,r.binzip_member_id as r_id\n"
					+ "        ,r.RESERVE_STARTDATE\n"
					+ "        ,r.RESERVE_ENDDATE\n"
					+ "        ,r.PEOPLENUM as r_pnum\n"
					+ "        ,r.RESERVER_NAME\n"
					+ "        ,r.RESERVER_PHONE\n"
					+ "        ,r.PAYER\n"
					+ "        ,r.RESERVER_BANK\n"
					+ "        ,r.RESERVER_ACNUMBER\n"
					+ "        ,r.COST as r_cost\n"
					+ "        ,r.REQUEST\n"
					+ "        ,r.STATUS\n"
					+ "    from \n"
					+ "        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*\n"
					+ "        from binzip_host_bbs a\n"
					+ "        left join binzip_host_bbs_imgs b\n"
					+ "        on a.idx = b.binzip_host_bbs_idx\n"
					+ "        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,\n"
					+ "        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,\n"
					+ "        a.ziptype, a.zipaddr, a.cost, a.peoplenum,\n"
					+ "        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r\n"
					+ "    where i.idx = r.BINZIP_HOST_BBS_IDX)\n"
					+ "where IDX = ?\n"
					+ "and RESERVE_STARTDATE = ?\n"
					+ "and STATUS = ?";
			ps=conn.prepareStatement(sql);
			System.out.println(":::sql :::\n" + sql);
			
			ps.setInt(1, bbsidx);
			ps.setString(2, reserve_startdate);
			ps.setInt(3, status);
			rs=ps.executeQuery();
			
			ArrayList<GuestReserveDTO> arr = new ArrayList<GuestReserveDTO>();
			while(rs.next()) {
				bbsidx = rs.getInt("idx");
				reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("r_pnum");
				int cost=rs.getInt("r_cost");
				status=rs.getInt("status");
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				String imgpath=rs.getString("imgpath");
				String bbsid = rs.getString("binzip_member_id");
				
				String hname=rs.getString("host_name");
				String hphone=rs.getString("host_phone");
				int hcost=rs.getInt("cost");
				String payer=rs.getString("payer");
				int hpeoplenum=rs.getInt("peoplenum");
				String contents=rs.getString("contents");
				
				GuestReserveDTO dto = new GuestReserveDTO(bbsidx, reserve_startdate, reserve_enddate, peoplenum, cost, status, zipname, ziptype, zipaddr, imgpath, bbsid, hname, hphone, hcost, payer, hpeoplenum, contents);
				arr.add(dto);
			}
			return arr;
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
	
	/**게스트예약리스트 만료일때 삭제버튼**/
	public int deleteList(int status, int bbsidx, String userid, String sdate) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_reserve"
					+ " where status = ?"
					+ " and binzip_host_bbs_idx = ?"
					+ " and binzip_member_id = ?"
					+ " and reserve_startdate = ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, status);
			ps.setInt(2, bbsidx);
			ps.setString(3, userid);
			ps.setString(4, sdate);
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**guestReservationList_ok에 사용 예약리스트에서 예약취소요청 버튼 관련**/
	public int gCancelRequest(int bbsidx, String reserve_startdate, int status) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_reserve"
					+ " set status = -1"
					+ " where binzip_host_bbs_idx = ?"
					+ " and reserve_startdate = ?"
					+ " and status = ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, bbsidx);
			ps.setString(2, reserve_startdate);
			ps.setInt(3, status);
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**guestCancelRequest.jsp 출력 관련**/
	public ArrayList<GuestReserveDTO> gPrintCancelRequest(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select hb.idx, hb.zipname, hb.ziptype, hb.zipaddr, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost"
					+ " from binzip_host_bbs hb"
					+ " left join binzip_reserve r"
					+ " on hb.idx = r.binzip_host_bbs_idx"
					+ " where r.status = -1"
					+ " and r.binzip_member_id = ?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<GuestReserveDTO> arr=new ArrayList<GuestReserveDTO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String zipname = rs.getString("zipname");
				String ziptype = rs.getString("ziptype");
				String zipaddr = rs.getString("zipaddr");
				String reserve_startdate = rs.getString("reserve_startdate");
				String reserve_enddate = rs.getString("reserve_enddate");
				int peoplenum = rs.getInt("peoplenum");
				int cost = rs.getInt("cost");
				GuestReserveDTO dto=new GuestReserveDTO(idx, zipname, ziptype, zipaddr, reserve_startdate, reserve_enddate, peoplenum, cost);
				arr.add(dto);
			}
			return arr;
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