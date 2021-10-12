package binzip.findzip;

import java.util.*;
import java.sql.*;

public class FindzipDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public FindzipDAO() {
		super();
		System.out.println("FindzipDAo 호출");
	}
	
	public ArrayList<FindzipDTO> getZipInfo(){
		try {
			conn=binzip.db.BinzipDB.getConn();
			ArrayList<FindzipDTO> arr =new ArrayList<FindzipDTO>();
			String sql="select * from binzip_host_bbs where=";
			conn.prepareStatement(sql);
			return arr;
		}catch(Exception e2) {
			e2.printStackTrace();
			return null;
		}finally {
			try {
				
			}catch(Exception e2){}
		}
	}
	
}
