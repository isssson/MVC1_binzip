package binzip.zipoption;

import java.sql.*;
import java.util.*;

public class Binzip_ZipOptionDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Binzip_ZipOptionDAO() {
		System.out.println("옵션 DAO 생성");
	}
	
	//집옵션 체크박스 세팅 관련 메서드
	public ArrayList<Binzip_ZipOptionDTO> zipOptionList(){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select * from binzip_option where category=1 and binzip_host_bbs_idx=0 order by idx asc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				int category=rs.getInt("category");
				String op=rs.getString("op");
				int status=rs.getInt("status");
				int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
				Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
	//주방 옵션 체크박스 세팅 관련 메서드
	public ArrayList<Binzip_ZipOptionDTO> kitchenOptionList(){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select * from binzip_option where category=2 and binzip_host_bbs_idx=0 order by idx asc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				int category=rs.getInt("category");
				String op=rs.getString("op");
				int status=rs.getInt("status");
				int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
				Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
	//욕실 옵션 체크박스 세팅 관련 메서드
	public ArrayList<Binzip_ZipOptionDTO> bathOptionList(){
		try {
			conn=binzip.db.BinzipDB.getConn();
			String sql="select * from binzip_option where category=3 and binzip_host_bbs_idx=0 order by idx asc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				int category=rs.getInt("category");
				String op=rs.getString("op");
				int status=rs.getInt("status");
				int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
				Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
