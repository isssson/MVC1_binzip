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
			String sql="select peoplenum, zipname, ziptype, zipaddr, cost from binzip_host_bbs where binzip_member_id=?";
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
				HostReserveDTO dto=new HostReserveDTO(peoplenum, zipname, ziptype, zipaddr, cost);
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
			String sql="select binzip_reserve.reserve_startdate, binzip_reserve.reserve_enddate, binzip_reserve.binzip_member_id, binzip_reserve.status"
					+ " from binzip_host_bbs left join binzip_reserve on binzip_host_bbs.idx = binzip_reserve.binzip_host_bbs_idx"
					+ " where binzip_host_bbs.binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<HostReserveDTO> arr=new ArrayList<HostReserveDTO>();
			while(rs.next()) {
				String reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				String binzip_member_id=rs.getString("binzip_member_id");
				int status=rs.getInt("status");
				HostReserveDTO dto=new HostReserveDTO(binzip_member_id, reserve_startdate, reserve_enddate, status);
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
	public int payCheck(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_reserve"
					+ " set binzip_reserve.status = binzip_reserve.status+1"
					+ " where binzip_reserve.binzip_host_bbs_idx=("
					+ "select idx"
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
				
			}catch(Exception e2) {}
		}
	}
	
	/**zipClosed_ok.jsp**/
	public int zipClosed(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from ";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
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
}













