package binzip.hostmypage.reserve;

import java.sql.*;
import java.util.ArrayList;

public class HostReserveDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public HostReserveDAO() {
		super();
		System.out.println("HostReserveDAO 호출");
	}
	
	/**hostReservationList.jsp에 정보 불러오기**/
	public ArrayList<HostReserveDTO> reserveInfo(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select peoplenum, zipname, ziptype, zipaddr, cost, idx from binzip_host_bbs where binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<HostReserveDTO> arr=new ArrayList<HostReserveDTO>();
			while(rs.next()) {
				int peoplenum=rs.getInt("peoplenum");
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				int cost=rs.getInt("cost");
				int bbsidx=rs.getInt("idx");
				HostReserveDTO dto=new HostReserveDTO(peoplenum, zipname, ziptype, zipaddr, cost, bbsidx);
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
	
	/**HostReservationList.jsp에 정보 불러오기 아랫단**/
	public ArrayList<HostReserveDTO> reserveInfo2(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select binzip_reserve.reserve_startdate, binzip_reserve.reserve_enddate, binzip_reserve.binzip_member_id, binzip_reserve.status, binzip_reserve.binzip_host_bbs_idx"
					+ " from binzip_host_bbs left join binzip_reserve on binzip_host_bbs.idx = binzip_reserve.binzip_host_bbs_idx"
					+ " where binzip_host_bbs.binzip_member_id=? and binzip_reserve.status >= 0";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<HostReserveDTO> arr=new ArrayList<HostReserveDTO>();
			while(rs.next()) {
				String reserver_startdate=rs.getString("reserve_startdate");
				String reserver_enddate=rs.getString("reserve_enddate");
				String binzip_member_id=rs.getString("binzip_member_id");
				int bbsidx=rs.getInt("binzip_host_bbs_idx");
				int status=rs.getInt("status");
				HostReserveDTO dto=new HostReserveDTO(binzip_member_id, reserver_startdate, reserver_enddate, status, bbsidx);
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
	
	/**payCheck_ok.jsp 입금대기중을 입금완료로 바꿈 그 다음은 만료**/
	public int payCheck(String userid, int idx) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_reserve"
					+ " set binzip_reserve.status = binzip_reserve.status+1"
					+ " where binzip_reserve.binzip_host_bbs_idx=("
					+ "select idx"
					+ " from binzip_host_bbs"
					+ " where binzip_member_id=? and idx=?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setInt(2, idx);
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
	
	/**cancelReservation_ok.jsp**/
	public int cancelReservation(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_reserve"
					+ " where binzip_host_bbs_idx=("
					+ " select idx"
					+ " from binzip_host_bbs"
					+ " where binzip_member_id=?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
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
	
	/**moreInfo.jsp**/
	public HostReserveDTO moreInfo(String userid, int idx) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select status, reserver_name, payer, reserver_phone, reserve_startdate, reserve_enddate, peoplenum, cost"
					+ " from binzip_reserve"
					+ " where binzip_host_bbs_idx=("
					+ " select idx"
					+ " from binzip_host_bbs"
					+ " where binzip_member_id=? and idx=?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setInt(2, idx);
			rs=ps.executeQuery();
			HostReserveDTO dto=null;
			if(rs.next()) {
				int status=rs.getInt("status");
				String reserver_name=rs.getString("reserver_name");
				String payer=rs.getString("payer");
				String reserver_phone=rs.getString("reserver_phone");
				String reserver_startdate=rs.getString("reserve_startdate");
				String reserver_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("peoplenum");
				int cost=rs.getInt("cost");
				dto=new HostReserveDTO(reserver_startdate, reserver_enddate, peoplenum, cost, status, reserver_name, payer, reserver_phone);
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
	
	/**zipClosed_ok.jsp**/
	public int zipClosed(int idx) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_host_bbs where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, idx);
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**hostPastReservationList.jsp 지난 예약 내역 불러오기**/
	public ArrayList<HostReserveDTO> pastReservation(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select r.reserve_startdate, r.reserve_enddate, r.binzip_member_id, hb.zipname, hb.idx"
					+ " from binzip_reserve r"
					+ " left join binzip_host_bbs hb"
					+ " on r.binzip_host_bbs_idx = hb.idx"
					+ " where r.status = 3"
					+ " and hb.binzip_member_id = ?"
					+ " order by r.reserve_startdate";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<HostReserveDTO> arr=new ArrayList<HostReserveDTO>();
			while(rs.next()) {
				String rsv_sdate=rs.getString("reserve_startdate");
				String rsv_edate=rs.getString("reserve_enddate");
				String bm_id=rs.getString("binzip_member_id");
				String zip_name=rs.getString("zipname");
				int bbsidx = rs.getInt("idx");
				HostReserveDTO dto=new HostReserveDTO(rsv_sdate, rsv_edate, bm_id, zip_name, bbsidx);
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
	
	/**예약내역삭제**/
	public int deleteData(String gid, String startdate, int bbsidx) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_reserve"
					+ " where binzip_member_id = ?"
					+ " and reserve_startdate = ?"
					+ " and binzip_host_bbs_idx = ?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, gid);
			ps.setString(2, startdate);
			ps.setInt(3, bbsidx);
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
	
	/**예약취소 레코드 호출**/
	public ArrayList<HostReserveDTO> cancelRequest(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select r.reserve_startdate, r.reserve_enddate, r.binzip_member_id, hb.zipname, hb.idx"
					+ " from binzip_reserve r"
					+ " left join binzip_host_bbs hb"
					+ " on r.binzip_host_bbs_idx = hb.idx"
					+ " where r.status = -1"
					+ " and hb.binzip_member_id = ?"
					+ " order by r.reserve_startdate";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<HostReserveDTO> arr=new ArrayList<HostReserveDTO>();
			while(rs.next()) {
				String rsv_sdate=rs.getString("reserve_startdate");
				String rsv_edate=rs.getString("reserve_enddate");
				String bm_id=rs.getString("binzip_member_id");
				String zip_name=rs.getString("zipname");
				int bbsidx = rs.getInt("idx");
				HostReserveDTO dto=new HostReserveDTO(rsv_sdate, rsv_edate, bm_id, zip_name, bbsidx);
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
	
	/**예약취소승인**/
	public int cancelPermission(String gid, String startdate, int bbsidx) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_reserve"
					+ " where binzip_member_id = ?"
					+ " and reserve_startdate = ?"
					+ " and binzip_host_bbs_idx = ? and status = -1";
			ps=conn.prepareStatement(sql);
			ps.setString(1, gid);
			ps.setString(2, startdate);
			ps.setInt(3, bbsidx);
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
	
}














