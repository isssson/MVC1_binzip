package binzip.zipoption;

public class Binzip_ZipOptionDTO {

	private int idx;
	private int category;
	private String op;
	private int status;
	private int binzip_host_bbs_idx;
	
	public Binzip_ZipOptionDTO() {
		super();
	}

	public Binzip_ZipOptionDTO(int idx, int category, String op, int status, int binzip_host_bbs_idx) {
		super();
		this.idx = idx;
		this.category = category;
		this.op = op;
		this.status = status;
		this.binzip_host_bbs_idx = binzip_host_bbs_idx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getBinzip_host_bbs_idx() {
		return binzip_host_bbs_idx;
	}

	public void setBinzip_host_bbs_idx(int binzip_host_bbs_idx) {
		this.binzip_host_bbs_idx = binzip_host_bbs_idx;
	}
		
}
