package binzip.mypage;

import java.sql.*;

public class InfoDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	// P/F
	public static final int ERROR=-1;
	public static final int SUCCESS=0;	
	
	public InfoDAO() {
		super();
		System.out.println("HostDAO 호출");
	}
	
	/**hostMyPage.jsp, guestMyPage.jsp 내 정보 보기**/
	public InfoDTO hostInfo(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select id, question, answer, name, birthdate, phone, email from binzip_member where id = ?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			InfoDTO dto=null;
			if(rs.next()) {
				String id=rs.getString("id");
				String question=rs.getString("question");
				String answer=rs.getString("answer");
				String name=rs.getString("name");
				String birthdate=rs.getString("birthdate");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				dto=new InfoDTO(id, question, answer, name, birthdate, phone, email);
			}
			return dto;
		}catch(Exception e){
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
	
	/**hostMypage.jsp 은행 정보 보기**/
	public InfoDTO hostBankInfo(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select bank, acnumber from binzip_host where binzip_member_id = ?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			InfoDTO dto=null;
			if(rs.next()) {
				String bank=rs.getString("bank");
				String acnumber=rs.getString("acnumber");
				dto=new InfoDTO(bank, acnumber);
			}
			return dto;
		}catch(Exception e){
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
	
	/**hostMypage_ok.jsp, guestMyPage.jsp 내 정보 수정 binzip_member테이블**/
	public int hostUpdate(InfoDTO dto) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_member set question=?, answer=?, name=?, phone=? where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getQuestion());
			ps.setString(2, dto.getAnswer());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getPhone());
			ps.setString(5, dto.getId());
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**hostMypage_ok.jsp 은행 관련 내 정보 수정 binzip_host테이블**/
	public int hostUpdate2(InfoDTO dto) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="update binzip_host set bank=?, acnumber=? where binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getBank());
			ps.setString(2, dto.getAcnumber());
			ps.setString(3, dto.getId());
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**deleteMember_ok.jsp 호스트, 게스트 회원탈퇴 binzip_member테이블**/
	public int memberDel(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="delete from binzip_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
}















