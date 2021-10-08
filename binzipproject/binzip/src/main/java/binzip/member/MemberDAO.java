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
	
	public MemberDAO() {
		System.out.println("MemberDAO 생성자 호출");
	}	
	

	 public int MemberJoin(MemberDTO dto) {
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
 
 
	 public boolean checkId(String userid) {
		 try {
				conn=binzip.db.BinzipDB.getConn();
				String sql="select id from binzip_member where id="+"'"+userid+"'";
				System.out.println(sql);
				ps=conn.prepareStatement(sql);
//				ps.setString(1,	userid);
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
}
