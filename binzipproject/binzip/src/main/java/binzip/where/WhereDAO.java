package binzip.where;

import java.sql.*;
import java.util.*;

public class WhereDAO {
	
	//db connect var
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//constructor
	public WhereDAO() {
		System.out.println("WhereDAO 호출");
	}
	
	//해당 구 출력
	public ArrayList<WhereDTO> getGu(String juso, String siDo){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select distinct si_gun_gu from binzip_addr_"+juso+" where si_do=?";
			System.out.println(sql);
			ps=conn.prepareStatement(sql);
			ps.setString(1, siDo);
			rs=ps.executeQuery();
			
			ArrayList<WhereDTO> arr=new ArrayList<WhereDTO>();
			
			while(rs.next()) {
				String siGunGu=rs.getString("si_gun_gu");
				
				WhereDTO dto=new WhereDTO(siGunGu);
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
			}catch(Exception e2) {
				
			}
		}
		
	}
	
}
