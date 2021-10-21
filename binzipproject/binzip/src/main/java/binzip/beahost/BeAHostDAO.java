package binzip.beahost;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import binzip.member.MemberDTO;

public class BeAHostDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BeAHostDAO() {
		super();
	}
	
	 public int inputHostTable(BeAHostDTO dto) {
		 	try {
				conn = binzip.db.BinzipDB.getConn();
				String sql = "insert into binzip_host values(binzip_host_idx.nextval, ?, ?, ?, sysdate)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getBinzip_member_id());
				ps.setString(2, dto.getBank());
				ps.setString(3, dto.getAcnumber());
				
				int count = ps.executeUpdate();
				return count;
			} catch(Exception e) {
				e.printStackTrace();
				return -1;
			} finally {
				try {
					if(ps != null)ps.close();
					if(conn != null)conn.close();
				} catch(Exception e2) {}
			}
	 }
}
