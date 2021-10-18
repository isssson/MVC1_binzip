package binzip.wf;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class ImgWebFolder {

	public static final String HOST_HOME="C:\\이주호\\semi\\binzipproject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\binzip\\hosting\\imgupload";
	private String id;
	private String host_bbs_idx;
	private String crpath;
	private long totalSize, usedSize, freeSize;
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ImgWebFolder() {
		System.out.println("이미지웹폴더 생성자 호출");
		totalSize = 1024*1024*10;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCrpath() {
		return crpath;
	}

	public void setCrpath(String crpath) {
		this.crpath = crpath;
	}

	public long getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(long totalSize) {
		this.totalSize = totalSize;
	}

	public long getUsedSize() {
		return usedSize;
	}

	public void setUsedSize(long usedSize) {
		this.usedSize = usedSize;
	}

	public long getFreeSize() {
		return freeSize;
	}

	public void setFreeSize(long freeSize) {
		this.freeSize = freeSize;
	}
	
	public String getHost_bbs_idx() {
		return host_bbs_idx;
	}

	public void setHost_bbs_idx(String host_bbs_idx) {
		this.host_bbs_idx = host_bbs_idx;
	}

	//호스트 해당 폴더 관련 메서드 
	public void hostImgFolderExist() {
		
		File f=new File(HOST_HOME+"/"+id);
		
		if(!f.exists()) {
			f.mkdir();		
		}
		
		usedSize = 0;
		settingUsedSize(f);
		freeSize = totalSize - usedSize;
	}
	// 실제 용량 구하는 메서드
	public void settingUsedSize(File f) {
		
		File files[]=f.listFiles();
		
		for(int i = 0; i < files.length; i++) {
			if(files[i].isFile()) {
				usedSize+=files[i].length();
			}else {
				settingUsedSize(files[i]);
			}
		}
	}
	//게시글 이미지 저장 폴더 관련 메서드 
	public void host_BbsImgFolderExist() {
		
		File f = new File(HOST_HOME+"/"+id+"/"+host_bbs_idx);
		
		if(!f.exists()) {
			f.mkdir();		
		}
		usedSize = 0;
		settingUsedSize(f);
		freeSize = totalSize - usedSize;
	}
	//이미경로 저장 관련 메서드
	public int imgPath() {

	File f = new File(HOST_HOME+"/"+id+"/"+host_bbs_idx);		
	File imgp[] = f.listFiles();
	String ipath[] = new String[imgp.length+1];	
	int count = 0;
	try {
		conn = binzip.db.BinzipDB.getConn();
		for(int i = 0; i < imgp.length; i++) {
			String sql = "insert into binzip_host_bbs_imgs values (binzip_host_bbs_imgs_idx.nextval,?,?)";
			ps = conn.prepareStatement(sql);
			ipath[i] = imgp[i].getName();			
			ps.setString(1, host_bbs_idx);
			ps.setString(2, ipath[i].toString());
			count = ps.executeUpdate();			
		}		
		return count;
	}catch(Exception e) {
		e.printStackTrace();
		return -1;
	}finally {
		try {
			if(ps!=null)ps.close();
			if(conn!=null)conn.close();
		}catch(Exception e2) {}
	}
}

	
	
	
}





















