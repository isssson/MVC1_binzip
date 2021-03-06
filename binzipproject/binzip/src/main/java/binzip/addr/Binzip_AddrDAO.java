package binzip.addr;

import java.sql.*;
import java.util.*;

public class Binzip_AddrDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
		
	public Binzip_AddrDAO() {
		super();
	}
	
	//시도 셀렉트박스 관련 메서드
	public ArrayList<String> si(String workType,String si_do) {
		try {
			conn = binzip.db.BinzipDB.getConn();
		
			String sql = "SELECT "+ si_do+ " FROM"
					+ "("
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_BUSAN UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_CHUNGBUK UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_CHUNGNAM UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_DAEGU UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_DAEJEON UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_GANGWON UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_GWANGJU UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_GYEONGBUK UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_GYEONGGI UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_GYEONGNAM UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_INCHEON UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_JEJU UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_JEONBUK UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_JEONNAM UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_SEJONG UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_SEOUL UNION ALL"
					+ " SELECT " + si_do + " FROM BINZIP_ADDR_ULSAN )"
					+ " GROUP BY " + si_do
					+ " ORDER BY " + si_do;
			ps=conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			ArrayList<String> arr = new ArrayList<String>();
			while(rs.next()) {
				String addrsi_do = rs.getString("si_do");
				arr.add(addrsi_do);
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
			}catch(Exception e2) {}
		}
	}
	//시군구 셀렉트박스 관련 메서드
	public ArrayList<String> gu(String workType,String si_do) {
		try {
			String group = "si_gun_gu";
			String subQuery = " WHERE si_do = '"+si_do+"'";
			ArrayList<String> arr = new ArrayList<String>();
			
			conn = binzip.db.BinzipDB.getConn();
			
			if(workType == null || workType == "") {
				return arr;
			}
			
			String sql = "SELECT "+group+" FROM"
					+ "("
					+ " SELECT "+group+" FROM BINZIP_ADDR_BUSAN "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_CHUNGBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_CHUNGNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_DAEGU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_DAEJEON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GANGWON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GWANGJU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGGI "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_INCHEON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEJU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEONBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEONNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_SEJONG "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_SEOUL "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_ULSAN "+subQuery+")"
					
					+ " GROUP BY "+group
					+ " ORDER BY "+group;
			ps = conn.prepareStatement(sql);			
			rs = ps.executeQuery();				
			while(rs.next()) {
				String addrsi_gun_gu = rs.getString("si_gun_gu");
				arr.add(addrsi_gun_gu);
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
			}catch (Exception e2) {}
		}
	}
	
	//도로명 셀렉트박스 관련 메서드
	public ArrayList<String> ro(String workType, String si_do, String si_gun_gu){
		try {
			String group = "road_name";
			String subQuery = " WHERE si_do = '" + si_do + "' AND si_gun_gu = '" + si_gun_gu + "'";
			ArrayList<String> arr = new ArrayList<String>();
			
			conn = binzip.db.BinzipDB.getConn();
			
			if(workType == null || !(workType.equals("getRo"))) {
				return arr;
			}
			
			String sql = "SELECT "+group+" FROM"
					+ "("
					+ " SELECT "+group+" FROM BINZIP_ADDR_BUSAN "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_CHUNGBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_CHUNGNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_DAEGU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_DAEJEON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GANGWON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GWANGJU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGGI "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_GYEONGNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_INCHEON "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEJU "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEONBUK "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_JEONNAM "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_SEJONG "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_SEOUL "+subQuery+" UNION ALL"
					+ " SELECT "+group+" FROM BINZIP_ADDR_ULSAN "+subQuery+")"
				
					+ " GROUP BY "+group
					+ " ORDER BY "+group;
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();	
			
			while(rs.next()) {
				String addrroad_name = rs.getString(1);
				arr.add(addrroad_name);
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
			}catch(Exception e2) {}
		}			
	}
	
	//where.jsp select option values si
	public ArrayList<String> whereSi() {
		try {
			conn = binzip.db.BinzipDB.getConn();
			String sql = "SELECT si_do FROM"
					+ "("
					+ " SELECT si_do FROM BINZIP_ADDR_BUSAN UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_CHUNGBUK UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_CHUNGNAM UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_DAEGU UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_DAEJEON UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_GANGWON UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_GWANGJU UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_GYEONGBUK UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_GYEONGGI UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_GYEONGNAM UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_INCHEON UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_JEJU UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_JEONBUK UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_JEONNAM UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_SEJONG UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_SEOUL UNION ALL"
					+ " SELECT si_do FROM BINZIP_ADDR_ULSAN )"
					+ " GROUP BY si_do " 
					+ " ORDER BY si_do ";
			
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			ArrayList<String> arr = new ArrayList<String>();
			while(rs.next()) {
				String addrsi_do = rs.getString(1);
				arr.add(addrsi_do);
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
			}catch(Exception e2) {}
		}
	}
	
	//where.jsp select option values si_gun_gu
	public ArrayList<String> whereSiGunGu(String si_do) {
		try {
			String subQuery = " WHERE si_do = '" + si_do + "'";
			ArrayList<String> arr = new ArrayList<String>();
			conn = binzip.db.BinzipDB.getConn();
			String sql = "SELECT si_gun_gu FROM"
					+ "("
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_BUSAN "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_CHUNGBUK "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_CHUNGNAM "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_DAEGU "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_DAEJEON "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_GANGWON "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_GWANGJU "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_GYEONGBUK "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_GYEONGGI "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_GYEONGNAM "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_INCHEON "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_JEJU "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_JEONBUK "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_JEONNAM "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_SEJONG "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_SEOUL "+subQuery+" UNION ALL"
					+ " SELECT si_gun_gu FROM BINZIP_ADDR_ULSAN "+subQuery+")"	
					+ " GROUP BY si_gun_gu "
					+ " ORDER BY si_gun_gu ";
			ps = conn.prepareStatement(sql);			
			rs = ps.executeQuery();				
			while(rs.next()) {
				String addrsi_gun_gu = rs.getString(1);
				arr.add(addrsi_gun_gu);
			}
			return arr;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				
			}catch(Exception e2) {}
		}
	}
		
		
}