package binzip.mypage.reserve;

import java.sql.*;
import java.util.*;

public class GuestReserveDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	/**guestReservation.jsp 게스트 정보 불러오기**/
	public ArrayList<GuestReserveDTO> reserveInfo(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select r.binzip_host_bbs_idx, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost, r.status, hb.zipname, hb.ziptype, hb. zipaddr, hbi.imgpath"
					+ " from binzip_reserve r"
					+ " left join binzip_host_bbs hb"
					+ " on r.binzip_host_bbs_idx = hb.idx"
					+ " left join binzip_host_bbs_imgs hbi"
					+ " on r.binzip_host_bbs_idx = hbi.binzip_host_bbs_idx"
					+ " where r.status >= 0"
					+ " and r.status < 4"
					+ " and r.binzip_member_id = ?"
					+ " order by r.binzip_host_bbs_idx, r.status";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<GuestReserveDTO> arr=new ArrayList<GuestReserveDTO>();
			while(rs.next()) {
				int idx = rs.getInt("binzip_host_bbs_idx");
				String reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("peoplenum");
				int cost=rs.getInt("cost");
				int status=rs.getInt("status");
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				String imgpath=rs.getString("imgpath");
				GuestReserveDTO dto=new GuestReserveDTO(idx, reserve_startdate, reserve_enddate, peoplenum, cost, status, zipname, ziptype, zipaddr, imgpath);
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
	public GuestReserveDTO showInfo(int bbsidx, String reserve_startdate, int status) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select hb.zipname, hb.ziptype, hb.zipaddr, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost, r.status, m.name, m.phone, r.payer, r.request, hbi.imgpath"
					+ " from binzip_host_bbs hb"
					+ " left join binzip_reserve r"
					+ " on hb.idx = r.binzip_host_bbs_idx"
					+ " left join binzip_host_bbs_imgs hbi"
					+ " on hbi.binzip_host_bbs_idx = hb.idx"
					+ " left join binzip_member m"
					+ " on m.id = hb.binzip_member_id"
					+ " where hb.idx = ?"
					+ " and r.reserve_startdate = ?"
					+ " and r.status = ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, bbsidx);
			ps.setString(2, reserve_startdate);
			ps.setInt(3, status);
			rs=ps.executeQuery();
			GuestReserveDTO dto=null;
			if(rs.next()) {
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				String reserver_startdate=rs.getString("reserve_startdate");
				String reserver_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("peoplenum");
				int cost=rs.getInt("cost");
				int now_status=rs.getInt("status");
				String host_name=rs.getString("name");
				String host_phone=rs.getString("phone");
				String payer=rs.getString("payer");
				String request=rs.getString("request");
				String imgpath=rs.getString("imgpath");
				dto=new GuestReserveDTO(zipname, ziptype, zipaddr, reserver_startdate, reserver_enddate, peoplenum, cost, now_status, host_name, host_phone, payer, request, imgpath);
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