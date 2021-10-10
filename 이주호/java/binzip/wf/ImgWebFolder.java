package binzip.wf;

import java.io.*;

public class ImgWebFolder {

	public static final String HOST_HOME="C:\\이주호\\semi\\binzipproject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\binzip\\hosting\\imgupload";
	private String id;
	private String crpath;
	private long totalSize, usedSize, freeSize;
	
	public ImgWebFolder() {
		System.out.println("이미지웹폴더 생성자 호출");
		usedSize = 0;
		freeSize = 0;
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
	
	//호스트 공간(폴더) 있으면 아무거소 안하고 없으면 폴더 만들어줌
	public void hostImgFolderExist() {
		
		File f=new File(HOST_HOME+"/"+id);
		
		if(!f.exists()) {
			f.mkdir();		
		}
		
		usedSize = 0;
		settingUsedSize(f);
		freeSize=totalSize - usedSize;
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

	
	
	
}





















