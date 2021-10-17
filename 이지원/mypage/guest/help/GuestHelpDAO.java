package binzip.mypage.guest.help;

import java.sql.*;
import java.util.ArrayList;

public class GuestHelpDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public GuestHelpDAO() {
		super();
		System.out.println("GuestHelpDAO호출");
	}
	
	//게시판 목록
	public ArrayList<GuestHelpDTO>helpList(String userid){	
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select idx,subject,writedate,readnum from binzip_help_bbs where binzip_member_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			ArrayList<GuestHelpDTO>arr=new ArrayList<GuestHelpDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String subject=rs.getString("subject");
				Date writedate=rs.getDate("writedate");
				int readnum=rs.getInt("readnum");
				GuestHelpDTO dto=new GuestHelpDTO(idx, subject, readnum, writedate);
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
