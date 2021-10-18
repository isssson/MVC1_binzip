package binzip.reserve;

import java.sql.*;

public class Binzip_ReserveDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	
	
	public Binzip_ReserveDAO() {
		
	}
	
	// 예약 관련 메서드	
	public int setReserve(Binzip_ReserveDTO dto) {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "insert into binzip_reserve values(?,?,to_date(?,'yyyy-mm-dd'),to_date(?,'yyyy-mm-dd'),?,?,?,?,?,?,?,?,0,sysdate)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getBinzip_member_id());
			ps.setInt(2, dto.getBinzip_host_bbs_idx());
			ps.setString(3, dto.getReserve_startdate());
			ps.setString(4, dto.getReserve_enddate());
			ps.setInt(5, dto.getPeoplenum());
			ps.setString(6, dto.getReserver_name());
			ps.setString(7, dto.getReserver_phone());
			ps.setString(8, dto.getPayer());
			ps.setString(9, dto.getReserver_bank());
			ps.setString(10, dto.getReserver_acnumber());
			ps.setInt(11, dto.getCost());
			ps.setString(12, dto.getRequest());
			
			int count = ps.executeUpdate();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps != null)ps.close();
				if(conn != null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	
}
