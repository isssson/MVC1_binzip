package binzip.mypage.guest.reserve;

import java.sql.*;

import java.util.ArrayList;

public class GuestReserveDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public GuestReserveDAO() {
		super();
		System.out.println("GuestReserveDAO 호출");
	}
	
	//나의 예약 현황
	public ArrayList<GuestReserveDTO>reserveList(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select reserve_startdate,reserve_enddate,peoplenum,zipname,ziptype,zipaddr,cost,status,imgpath from binzip_host_bbs where binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<GuestReserveDTO> arr=new ArrayList<GuestReserveDTO>();
			while(rs.next()) {
				String reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("peoplenum");
				String zipname=rs.getString("zipname");
				String ziptype=rs.getString("ziptype");
				String zipaddr=rs.getString("zipaddr");
				int cost=rs.getInt("cost");
				int status=rs.getInt("status");
				String imgpath=rs.getString("imgpath");
				GuestReserveDTO dto=new GuestReserveDTO(reserve_startdate,reserve_enddate,peoplenum,zipname,ziptype,zipaddr,cost,status,imgpath);
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
			}catch(Exception e2) {
				
			}
			}

	}
	
	//나의 예약 현황 세부사항(두번째 페이지)
	public ArrayList<GuestReserveDTO>reserveInfo(String userid){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select reserve_startdate,reserve_enddate,peoplenum,cost,reserver_name,reserver_phone,request from binzip_reserver where binzip_member_id=? ";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<GuestReserveDTO>arr=new ArrayList<GuestReserveDTO>();
			while(rs.next()) {
				String reserve_startdate=rs.getString("reserve_startdate");
				String reserve_enddate=rs.getString("reserve_enddate");
				int peoplenum=rs.getInt("peoplenum");
				int cost=rs.getInt("cost");
				String reserver_name=rs.getString("reserver_name");
				String reserver_phone=rs.getString("reserver_phone");
				String request=rs.getString("request");
				GuestReserveDTO dto=new GuestReserveDTO(reserve_startdate, reserve_enddate, peoplenum, cost, reserver_name, reserver_phone, request);
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
			}catch(Exception e2) {
				
			}
			}
	}
	
	//예약 취소 
	public int cancelReservation(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_reserve"
					+"where binzip_member_idx=("
					+"select idx"
					+"from binzip_member"
					+"where binzip_member_id=?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				
			}catch(Exception e2) {
				
			}
			}
	}
	
	
	
}
