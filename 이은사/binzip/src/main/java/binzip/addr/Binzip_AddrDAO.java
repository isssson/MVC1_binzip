package binzip.addr;

import java.sql.*;
import java.util.*;

public class Binzip_AddrDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
		
	public Binzip_AddrDAO() {
		System.out.println("주소 DAO 호출");
	}
	//서울시군구 셀렉트박스 관련 메서드
		public ArrayList<Binzip_AddrDTO> siGunGu(){
			try {
				conn=binzip.db.BinzipDB.getConn();
				String sql="select distinct si_gun_gu from binzip_addr_seoul order by si_gun_gu asc";
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery();
				ArrayList<Binzip_AddrDTO> arr = new ArrayList<Binzip_AddrDTO>();
				while(rs.next()) {
					String seoulsi_gun_gu=rs.getString(1);
					Binzip_AddrDTO dto = new Binzip_AddrDTO(0, seoulsi_gun_gu, seoulsi_gun_gu, seoulsi_gun_gu, seoulsi_gun_gu, sql, seoulsi_gun_gu);
					arr.add(dto);
				}
				return arr;
			}catch(Exception e) {
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
	
}
