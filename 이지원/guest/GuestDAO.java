package binzip.mypage.guest;

import java.sql.*;
import java.util.*;


public class GuestDAO {
	
	//db connect var
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public GuestDAO() {
		System.out.println("GuestDAO생성자 호출");
	}
	//마이페이지 정보수정조회 메서드
	public GuestDTO GuestUpdateForm(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			
			String sql="select id, pwd, question, answer, name, birthdate, phone, email from binzip_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			GuestDTO dto=null;
			if(rs.next()) {
				String id=rs.getString("id");
				String pwd=rs.getString("pwd");
				String qusetion=rs.getString("question");
				String answer=rs.getString("answer");
				String name=rs.getString("name");
				String birthdate=rs.getString("birthdate");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				dto= new GuestDTO(0, id, pwd, qusetion, answer, name, birthdate, phone, email, email, null, 0);
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
			}catch(Exception e2) {
				
			}
			}
	}
	
	//마이페이지 수정 메서드
	public int GuestUpdate(GuestDTO dto) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_member set pwd=?,question=?,answer=?,name=?,birthdate=?,phone=?,email=? where id = ?";
			ps=conn.prepareStatement(sql);

			ps.setString(1, dto.getPwd());
			ps.setString(2, dto.getQuestion());
			ps.setString(3, dto.getAnswer());
			ps.setString(4, dto.getName());
			ps.setString(5, dto.getBirthdate());
			ps.setString(6, dto.getPhone());
			ps.setString(7, dto.getEmail());
			ps.setString(8, dto.getId());
			
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				
			}
			}

	}
	
	//일반회원 삭제 관련 메서드
	public int GuestDel(GuestDTO dto) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			
			String sql="delete from binzip_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				
			}
			}

	}
}
