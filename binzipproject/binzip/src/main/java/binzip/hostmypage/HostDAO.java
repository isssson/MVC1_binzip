package binzip.hostmypage;

import java.sql.*;

public class HostDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	// P/F
	public static final int ERROR=-1;
	public static final int SUCCESS=0;	
	
	public HostDAO() {
		super();
		System.out.println("HostDAO 호출");
	}
	
	/**hostMypage.jsp 내 정보 보기**/
	public HostDTO hostInfo(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select binzip_member.id, question, answer, name, birthdate, phone, email, binzip_host.bank, acnumber "
					+ "from binzip_member, binzip_host "
					+ "where binzip_member.id = binzip_host.binzip_member_id and binzip_host.binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			HostDTO dto=null;
			if(rs.next()) {
				String id=rs.getString("id");
				String question=rs.getString("question");
				String answer=rs.getString("answer");
				String name=rs.getString("name");
				String birthdate=rs.getString("birthdate");
				String phone=rs.getString("phone");
				String bank=rs.getString("bank");
				String acnumber=rs.getString("acnumber");
				String email=rs.getString("email");
				dto=new HostDTO(id, question, answer, name, birthdate, phone, bank, acnumber, email);
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
	
	/**hostMypage_ok.jsp 내 정보 수정 binzip_member테이블**/
	public int hostUpdate(HostDTO dto) {
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
	
	/**hostMypage_ok.jsp 내 정보 수정 binzip_host테이블**/
	public int hostUpdate2(HostDTO dto) {
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
	
	/**deleteMember_ok.jsp 회원탈퇴 binzip_member테이블**/
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
	
	/**deleteMember_ok.jsp 회원탈퇴 binzip_host테이블**/
//	public int memberDel2(String userid) {
//		try {
//			conn=binzip.db.BinzipDB.getConn();
//			String sql="delete from binzip_host where id=?";
//			ps=conn.prepareStatement(sql);
//			ps.setString(1, userid);
//			int count=ps.executeUpdate();
//			return count;
//		}catch(Exception e) {
//			e.printStackTrace();
//			return ERROR;
//		}finally {
//			try {
//				if(ps!=null)ps.close();
//				if(conn!=null)conn.close();
//			}catch(Exception e2) {}
//		}
//	}
	
}















