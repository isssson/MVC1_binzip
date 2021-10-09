package binzip.member;

import java.sql.*;
import java.util.*;

public class MemberDAO {
	
	//db connect var
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//login check const
	public static final int NOT_ID = 1;
	public static final int NOT_PWD = 2;
	public static final int LOGIN_OK = 3;
	public static final int ERROR = -1;
	
	//grade const
	public static final String ADMIN = "4";
	public static final String GUEST = "5";
	public static final String HOST = "6";
	
	//Constructor
	public MemberDAO() {
		System.out.println("MemberDAO 생성자 호출");
	}	
	
	//회원가입
	 public int memberJoin(MemberDTO dto) {
		 	try {
				conn = binzip.db.BinzipDB.getConn();
				String sql = "insert into binzip_member values(binzip_member_idx.nextval, ?, ?, ?, ?, ?, ?, ?, ?, '주소', sysdate, 3)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getId());
				ps.setString(2, dto.getPwd());
				ps.setString(3, dto.getQuestion());
				ps.setString(4, dto.getAnswer());
				ps.setString(5, dto.getName());
				ps.setString(6, dto.getBirthdate());
				ps.setString(7, dto.getPhone());
				ps.setString(8, dto.getEmail());
				
				int count = ps.executeUpdate();
				return count;
			}catch(Exception e) {
				e.printStackTrace();
				return ERROR;
			}finally {
				try {
					if(ps != null)ps.close();
					if(conn != null)conn.close();
				}catch(Exception e2) {
					
				}
			}
	 }
 
	 //회원가입_아이디 중복체크
	 public boolean checkId(String userid) {
		 try {
				conn = binzip.db.BinzipDB.getConn();
				String sql = "select id from binzip_member where id = ?";
				ps=conn.prepareStatement(sql);
				ps.setString(1,	userid);
				rs = ps.executeQuery();
				
				return rs.next();
			}catch(Exception e) {
				e.printStackTrace();
				return false;
			}finally {
				try {
				    if(rs != null)rs.close();
					if(ps != null)ps.close();
					if(conn != null)conn.close();
				}catch(Exception e2) {
					
				}
			}
	}		
	
	//회원가입_휴대폰 중복체크
	public boolean phoneCheck(String userphone) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select * from binzip_member where phone=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userphone);
			rs = ps.executeQuery();
			
			return rs.next();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			try {
				 if(rs != null)rs.close();
				 if(ps != null)ps.close();
				 if(conn != null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	}
	
	//로그인_검증
	public int loginCheck(String userid, String userpwd) {
		
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select pwd from binzip_member where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				String dbpwd = rs.getString(1);
				if(dbpwd.equals(userpwd)) {
					return LOGIN_OK;
				}else {
					return NOT_PWD;
				}
			}else {
				return NOT_ID;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	//로그인_정보가져오기
	public ArrayList<MemberDTO> getUserInfo(String userid) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select name, grade from binzip_member where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			
			ArrayList<MemberDTO> arr = new ArrayList<MemberDTO>();
			
			while(rs.next()) {
				String name = rs.getString("name");
				int grade = rs.getInt("grade");
				
				MemberDTO dto = new MemberDTO(name, grade);
				arr.add(dto);
			}
			
			return arr;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	}
	
	//아이디 찾기
	public String findId(String username, String userphone) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select id from binzip_member where name = ? and phone = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, userphone);
			rs = ps.executeQuery();
			rs.next();
			
			return rs.getString(1); 
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	}
	
	//아이디 찾기_비밀번호 수정하기
	public int pwdUpdate(String pwd, String id) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "Update binzip_member set pwd = ? where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, id);
			
			int count = ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	}
	
	//비밀번호찾기_정보일치 검증
	public boolean findPwdInfo(String question, String answer, String userid) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select * from binzip_member where question = ? and answer = ? and id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, question);
			ps.setString(2, answer);
			ps.setString(3, userid);
			rs = ps.executeQuery();
			
			return rs.next();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			try {
				 if(rs != null)rs.close();
				 if(ps != null)ps.close();
				 if(conn != null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	
	}
	
}