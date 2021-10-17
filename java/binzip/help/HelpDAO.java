package binzip.help;

import java.sql.*;
import java.util.*;

public class HelpDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public HelpDAO() {}
	
	/**ref 마지막 값 구하기 관련 메서드*/
	public int getMaxRef() {
		try {
			String sql = "select max(ref) from binzip_help_bbs";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			int ref = 0; 
			if(rs.next()) { 
				ref = rs.getInt(1);
			}
			return ref;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();			
			} catch (Exception e2) {}
		}
	}
	
	/**글쓰기 관련 메서드*/
	public int bbsWrite(HelpDTO dto) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			int ref = getMaxRef();
			
			String sql = "insert into binzip_help_bbs values(binzip_help_bbs_idx.nextval, ?, ?, ?, 0, sysdate, ?, ?, 0, 0)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getBinzip_member_id());
			ps.setString(2, dto.getSubject());
			ps.setString(3, dto.getContents());
			ps.setInt(4, dto.getStatus());
			ps.setInt(5, ref + 1);
			
			int count = ps.executeUpdate();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**순번 수정 관련 메서드*/
	public void updateStep(int ref, int step) {
		try {
			String sql = "update binzip_help_bbs set step = step + 1 where ref = ? and step >= ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, ref);
			ps.setInt(2, step);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)ps.close();
			} catch (Exception e2) {}
		}
	}
	
	/**답변 글쓰기 관련 메서드*/
	public int bbsReWrite(HelpDTO dto) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			updateStep(dto.getRef(), dto.getStep() + 1);
			String sql = "insert into binzip_help_bbs values(binzip_help_bbs_idx.nextval, ?, ?, ?, 0, sysdate, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getBinzip_member_id());
			ps.setString(2, dto.getSubject());
			ps.setString(3, dto.getContents());
			ps.setInt(4, dto.getStatus());
			ps.setInt(5, dto.getRef());  
			ps.setInt(6, dto.getLev() + 1);
			ps.setInt(7, dto.getStep() + 1);
			
			int count = ps.executeUpdate();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**총 게시물 수 반환 관련 메서드*/
	public int getTotalCnt() {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "select count(*) from binzip_help_bbs";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			
			int count = rs.getInt(1);
			return count == 0 ? 1 : count;
		} catch (Exception e) {
			e.printStackTrace();
			return 1; 
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**글 목록 관련 메서드*/
	public ArrayList<HelpDTO> bbsList(int cp, int listSize) { 
		try {
			conn = binzip.db.BinzipDB.getConn();
			
			int start = (cp - 1) * listSize + 1;
			int end = cp * listSize;
			
			String sql = "select * from "
					+ "(select rownum as rnum, a.* from "
					+ "(select * from binzip_help_bbs order by ref desc, step asc) a) b "
					+ "where rnum >= ? and rnum <= ?";
			
			ps = conn.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			
			ArrayList<HelpDTO> arr = new ArrayList<HelpDTO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String binzip_member_id = rs.getString("binzip_member_id");
				String subject = rs.getString("subject");
				String contents = rs.getString("contents");
				int readnum = rs.getInt("readnum");
				java.sql.Date writedate = rs.getDate("writedate");
				int status = rs.getInt("status");
				int ref = rs.getInt("ref");
				int lev = rs.getInt("lev");
				int step = rs.getInt("step");
				
				HelpDTO dto = new HelpDTO(idx, binzip_member_id, subject, contents, readnum, writedate, status, ref, lev, step);
				arr.add(dto);
			}
			return arr;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**조회수 관련 메서드*/
	public void getReadNumCnt(int idx) {
		try {
			String sql = "update binzip_help_bbs set readnum = readnum + 1 where idx = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)ps.close();
			} catch (Exception e2) {}
		}
	}
	
	/**본문 관련 메서드*/
	public HelpDTO bbsContents(int idx) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			getReadNumCnt(idx);
			
			String sql = "select * from binzip_help_bbs where idx = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			rs = ps.executeQuery();
			
			HelpDTO dto = null;
			if(rs.next()) {
				String binzip_member_id = rs.getString("binzip_member_id");
				String subject = rs.getString("subject");
				String contents = rs.getString("contents");
				int readnum = rs.getInt("readnum");
				java.sql.Date writedate = rs.getDate("writedate");
				int status = rs.getInt("status");
				int ref = rs.getInt("ref");
				int lev = rs.getInt("lev");
				int step = rs.getInt("step");
				
				dto = new HelpDTO(idx, binzip_member_id, subject, contents, readnum, writedate, status, ref, lev, step);
			}
			return dto;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**게시글 수정 관련 메서드*/
	public int updateContents(String contents, int idx) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "update binzip_help_bbs set contents = ? where idx = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, contents);
			ps.setInt(2, idx);
			
			int count = ps.executeUpdate();
			return count;
		} catch(Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	/**게시물 삭제 관련 메서드*/
	public int deleteContents(HelpDTO dto) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "delete from binzip_help_bbs where idx = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, dto.getIdx());
			
			int count = ps.executeUpdate();
			return count;
		} catch(Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
}
