package binzip.adminmypage;

import java.sql.*;
import java.util.*;

public class AdminDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public AdminDAO() {
		super();
	}
	//호스트 리스트 관련 메서드
	public ArrayList<AdminDTO> getHostList(){
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql="select id, name from binzip_member where grade = 6 order by joindate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<AdminDTO> arr = new ArrayList<AdminDTO>();
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				AdminDTO dto = new AdminDTO(name, id);
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
	//게스트 리스트 관련 메서드
	public ArrayList<AdminDTO> getGuestList(){
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql="select id, name from binzip_member where grade = 5 order by joindate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<AdminDTO> arr = new ArrayList<AdminDTO>();
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				AdminDTO dto = new AdminDTO(name, id);
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
	
	//호스트 탈퇴 관련 메서드
//	public int hostDelete(String id) {
//		try {
//			
//		}catch(Exception e) {
//			
//		}finally {
//			try {
//				
//			}catch(Exception e2) {}
//		}
//	}
	
	
	
	
	
	
	
	
	
	
	
	
}
