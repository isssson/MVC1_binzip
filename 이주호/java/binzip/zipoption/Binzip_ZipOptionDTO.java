package binzip.zipoption;

public class Binzip_ZipOptionDTO {

	private int idx;
	private int category;
	private String op;	
	private String zipop;
	private String kitop;
	private String bathop;	
	private int status;
	private int binzip_host_bbs_idx;
	private String zop[];
	private String kop[];
	private String bop[];
	
	public Binzip_ZipOptionDTO() {
		super();
	}
	
	public Binzip_ZipOptionDTO(String op) {
		this.op = op;	
	}

	public Binzip_ZipOptionDTO(int idx, int category, String op, String zipop, String kitop, String bathop, int status,
			int binzip_host_bbs_idx, String[] zop, String[] kop, String[] bop) {
		super();
		this.idx = idx;
		this.category = category;
		this.op = op;
		this.zipop = zipop;
		this.kitop = kitop;
		this.bathop = bathop;
		this.status = status;
		this.binzip_host_bbs_idx = binzip_host_bbs_idx;
		this.zop = zop;
		this.kop = kop;
		this.bop = bop;
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
	public String getZipop() {
		return zipop;
	}
	public void setZipop(String zipop) {
		this.zipop = zipop;
	}
	public String getKitop() {
		return kitop;
	}
	public void setKitop(String kitop) {
		this.kitop = kitop;
	}
	public String getBathop() {
		return bathop;
	}
	public void setBathop(String bathop) {
		this.bathop = bathop;
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
	public String[] getZop() {
		return zop;
	}
	public void setZop(String[] zop) {
		this.zop = zop;
	}
	public String[] getKop() {
		return kop;
	}
	public void setKop(String[] kop) {
		this.kop = kop;
	}
	public String[] getBop() {
		return bop;
	}
	public void setBop(String[] bop) {
		this.bop = bop;
	}
	
	
}