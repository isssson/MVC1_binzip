package binzip.hosting;

import java.sql.*;
import java.util.*;
import java.sql.Date;

public class Binzip_HostingDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public static final int ZIP_OPTION_BASIC = 1;
	public static final int ZIP_OPTION_KITCHEN = 2;
	public static final int ZIP_OPTION_BATH = 3;
	
	public Binzip_HostingDAO() {
		
	}
	//호스팅_휴대폰 중복체크
		public boolean phoneCheck(String hostphone) {
			try {
				conn=binzip.db.BinzipDB.getConn();
				String sql="select phone from binzip_member where phone=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, hostphone);
				rs = ps.executeQuery();				
				return rs.next();
			} catch(Exception e) {
				e.printStackTrace();
				return false;
			} finally {
				try {
					 if(rs != null)rs.close();
					 if(ps != null)ps.close();
					 if(conn != null)conn.close();
				} catch(Exception e2) {
					
				}
			}
		}
	//호스팅 정보입력 관련 메서드 
	public int hostingWrite(Binzip_HostingDTO dto) {
			
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql="insert into binzip_host_bbs values(binzip_host_bbs_idx.nextval,?,?,?,?,?,?,?,?,?,?,?,sysdate,?,?,? )";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getBinzip_member_id());
			ps.setString(2, dto.getHost_name());
			ps.setString(3, dto.getHost_email());
			ps.setString(4, dto.getHost_phone());
			ps.setString(5, dto.getHost_bank());
			ps.setString(6, dto.getHost_acnumber());
			ps.setString(7, dto.getZipname());
			ps.setString(8, dto.getZiptype());
			ps.setString(9, dto.getZipaddr());
			ps.setInt(10, dto.getCost());
			ps.setInt(11, dto.getPeoplenum());
			ps.setString(12, dto.getHost_bbs_startdate());
			ps.setString(13, dto.getHost_bbs_enddate());
			ps.setString(14, dto.getContents());
			int count = ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				
			}catch(Exception e2) {}
		}
	}
	//host_bbs_idx 확인 관련 메서드
	public int idxSearch(String id) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select idx from (select * from binzip_host_bbs order by idx desc) where rownum =1 and binzip_member_id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			int host_bbs_idx = 0;
			while(rs.next()) {
			host_bbs_idx = rs.getInt("idx");
			}
			return host_bbs_idx;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				
			}catch(Exception e2) {}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}


