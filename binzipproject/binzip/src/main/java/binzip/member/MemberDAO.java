package binzip.member;

import java.sql.*;
import java.sql.Date;
import java.util.*;
import java.text.*;
import javax.naming.*;
import javax.sql.*;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	public MemberDAO() {
		System.out.println("MemberDAO 생성자 호출");
	}	
	
	
	 public int memberJoin(MemberDTO dto) {
		 	try {
				conn=binzip.db.BinzipDB.getConn();
				String sql="insert into binzip_member values(binzip_member_idx.nextval,?,?,?,?,?,?,?,?,'주소',sysdate,0)";
				ps=conn.prepareStatement(sql);
				ps.setString(1, dto.getId());
				ps.setString(2, dto.getPwd());
				ps.setString(3, dto.getQuestion());
				ps.setString(4, dto.getAnswer());
				ps.setString(5, dto.getName());
				ps.setString(6, dto.getBirthdate());
				ps.setString(7, dto.getPhone());
				ps.setString(8, dto.getEmail());
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
 
	 //회원가입아이디중복체크
	 public boolean checkId(String userid) {
		 try {
				conn=binzip.db.BinzipDB.getConn();
				String sql="select id from binzip_member where id=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1,	userid);
				rs=ps.executeQuery();
				return rs.next();
			}catch(Exception e) {
				e.printStackTrace();
				return false;
			}finally {
				try {
				    if(rs!=null)rs.close();
					if(ps!=null)ps.close();
					if(conn!=null)conn.close();
				}catch(Exception e2) {
					
				}
			}
	}		
	
	//회원가입휴대폰중복체크
	public boolean phoneCheck(String userphone) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select * from binzip_member where phone=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userphone);
			rs=ps.executeQuery();
			return rs.next();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			try {
				 if(rs!=null)rs.close();
				 if(ps!=null)ps.close();
				 if(conn!=null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	
	}
	
	//로그인검증
	public int loginCheck(String userid, String userpwd) {
		
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select pwd from binzip_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			if(rs.next()) {
				String dbpwd=rs.getString(1); //어차피 가져올꺼 하나밖에 없음.
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
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	//세션에 저장
	public String getUserInfo(String userid) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select name from binzip_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			rs.next();
			return rs.getString(1);
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
	
	//아이디 찾기
	public String findid(String username, String userphone) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select id from binzip_member where name=? and phone=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, userphone);
			rs=ps.executeQuery();
			rs.next();
			return rs.getString(1); 
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
	
	//비밀번호 수정하기
	public int pwdUpdate(String pwd, String question, String answer, String id) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="Update binzip_member set pwd=? where id=? and question=? and answer=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, question);
			ps.setString(3, answer);
			ps.setString(4, id);
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
	
	//grade 가져오기
	public String getSgrade(String userid, String userpwd) {
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select grade from binzip_member where id=? and pwd=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, userpwd);
			rs=ps.executeQuery();
			rs.next();
			return rs.getString(1); 
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
	
}






