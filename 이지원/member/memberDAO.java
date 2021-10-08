package binzip.member;

import java.sql.*;
import java.util.*;


public class memberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	
	public memberDAO() {
		System.out.println("DAO테스트");
	}
	

 public int MemberJoin(memberDTO dto) {
	 	try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="insert into binzip_member values(binzip_member_idx.nextval,?,?,?,?,?,?,?,?,'없음',sysdate,2)";
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
 
 
 public boolean idCheck(String userid) {
	 try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select id from binzip_member where id=?";
			ps.getConnection().prepareStatement(sql);
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
	
public boolean phoneCheck(String userphone) {
	try {
		conn=binzip.db.BinzipDB.getConn();
		String sql="select * from binzip_member where phone=?";
		ps.getConnection().prepareStatement(sql);
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

//로그인
public int Logincheck(String userid,String userpwd) {
	try {
		conn=binzip.db.BinzipDB.getConn();
		String sql="select pwd from binzip_member where id=?";
		ps=conn.prepareStatement(sql);
		ps.setString(1, userid);
		rs=ps.executeQuery();
		if(rs.next()) {
			String dbpwd=rs.getString(1);
			if(dbpwd.equals(userpwd)) {
				return LOGIN_OK;
			}else {
				return NOT_PWD;}
		}else {
			return NOT_ID;
		}
	}catch(Exception e) {
		e.printStackTrace();
		return ERROR;
	}finally {
		try {
			if(rs!=null)rs.close();
			if(ps!=null)rs.close();
			if(conn!=null)rs.close();
		}catch(Exception e2) {
			
		}
		}
}

public String getUserInfo(String userid,String userphone) {
	try {
		conn=binzip.db.BinzipDB.getConn();
		String sql="select phone from binzip_member where id=?";
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
			if(ps!=null)rs.close();
			if(conn!=null)rs.close();
		}catch(Exception e2) {
			
		}
		}
}


public ArrayList<memberDTO>memberFind(String fkey,String fvalue){
	try {
		conn=binzip.db.BinzipDB.getConn();
		String sql="select * from binzip_member where"+fkey+"=?";
		ps=conn.prepareStatement(sql);
		ps.setString(1, fvalue);
		rs=ps.executeQuery();
		ArrayList<memberDTO> arr=new ArrayList<memberDTO>();
		while(rs.next()) {
			int idx=rs.getInt("idx");
			String id=rs.getString("id");
			String pwd=rs.getString("pwd");
			String name=rs.getString("name");
			String email=rs.getString("email");
			String tel=rs.getString("tel");
			String addr=rs.getString("addr");
			java.sql.Date joindate=rs.getDate("joindate");
			memberDTO dto=new memberDTO(idx, id, pwd, id, pwd, name, tel, tel, email, addr, joindate, idx);
			arr.add(dto);
		}
		return arr;
	}catch(Exception e) {
		e.printStackTrace();
		return null;
	}finally {
		try {
			if(rs!=null)rs.close();
			if(ps!=null)rs.close();
			if(conn!=null)rs.close();
		}catch(Exception e2) {
			
		}
		}

}

	


	}
	

