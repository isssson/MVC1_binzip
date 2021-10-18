package binzip.mypage.reserve;

public class HostReserveDTO {

	private int bbsidx;
	private String id;
	private String reserver_startdate;
	private String reserver_enddate;
	private int peoplenum;
	private String zipname;
	private String ziptype;
	private String zipaddr;
	private int cost;
	private int status;
	private String imgpath;
	private String reserver_name;
	private String payer;
	private String reserver_phone;
	
	private String binzip_member_id;
	private int idx;
	
	public HostReserveDTO() {
		super();
		System.out.println("HostReserveDTO 호출");
	}
	
	

	public HostReserveDTO(int bbsidx, String id, String reserver_startdate, String reserver_enddate, int peoplenum, String zipname,
			String ziptype, String zipaddr, int cost, int status, String imgpath, String reserver_name, String payer, String reserver_phone) {
		super();
		this.bbsidx = bbsidx;
		this.id = id;
		this.reserver_startdate = reserver_startdate;
		this.reserver_enddate = reserver_enddate;
		this.peoplenum = peoplenum;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.status = status;
		this.imgpath = imgpath;
		this.reserver_name = reserver_name;
		this.payer = payer;
		this.reserver_phone = reserver_phone;
	}

	public HostReserveDTO(int bbsidx, int peoplenum, String zipname, String ziptype, String zipaddr, int cost,
			String binzip_member_id,  String imgpath) {
		super();
		this.bbsidx = bbsidx;
		this.peoplenum = peoplenum;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.binzip_member_id = binzip_member_id;
		this.imgpath = imgpath;
	}

	public HostReserveDTO(int peoplenum, String zipname, String ziptype, String zipaddr, int cost, int bbsidx) {
		super();
		this.peoplenum = peoplenum;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.bbsidx = bbsidx;
	}
	
	public HostReserveDTO(String id, String reserver_startdate, String reserver_enddate, int status, int bbsidx) {
		super();
		this.bbsidx = bbsidx;
		this.id = id;
		this.reserver_startdate = reserver_startdate;
		this.reserver_enddate = reserver_enddate;
		this.status = status;
	}

	public HostReserveDTO(String reserver_startdate, String reserver_enddate, int peoplenum, int cost, int status,
			String reserver_name, String payer, String reserver_phone) {
		super();
		this.reserver_startdate = reserver_startdate;
		this.reserver_enddate = reserver_enddate;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.status = status;
		this.reserver_name = reserver_name;
		this.payer = payer;
		this.reserver_phone = reserver_phone;
	}

	public HostReserveDTO(String reserver_startdate, String reserver_enddate, String id, String zipname, int bbsidx) {
		super();
		this.reserver_startdate = reserver_startdate;
		this.reserver_enddate = reserver_enddate;
		this.id = id;
		this.zipname =zipname;
		this.bbsidx = bbsidx;
	}

	public int getBbsidx() {
		return bbsidx;
	}

	public void setBbsidx(int bbsidx) {
		this.bbsidx = bbsidx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getReserver_startdate() {
		return reserver_startdate;
	}

	public void setReserver_startdate(String reserver_startdate) {
		this.reserver_startdate = reserver_startdate;
	}

	public String getReserver_enddate() {
		return reserver_enddate;
	}

	public void setReserver_enddate(String reserver_enddate) {
		this.reserver_enddate = reserver_enddate;
	}

	public int getPeoplenum() {
		return peoplenum;
	}

	public void setPeoplenum(int peoplenum) {
		this.peoplenum = peoplenum;
	}

	public String getZipname() {
		return zipname;
	}

	public void setZipname(String zipname) {
		this.zipname = zipname;
	}

	public String getZiptype() {
		return ziptype;
	}

	public void setZiptype(String ziptype) {
		this.ziptype = ziptype;
	}

	public String getZipaddr() {
		return zipaddr;
	}

	public void setZipaddr(String zipaddr) {
		this.zipaddr = zipaddr;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getReserver_name() {
		return reserver_name;
	}

	public void setReserver_name(String reserver_name) {
		this.reserver_name = reserver_name;
	}

	public String getPayer() {
		return payer;
	}

	public void setPayer(String payer) {
		this.payer = payer;
	}

	public String getReserver_phone() {
		return reserver_phone;
	}

	public void setReserver_phone(String reserver_phone) {
		this.reserver_phone = reserver_phone;
	}

	public String getBinzip_member_id() {
		return binzip_member_id;
	}

	public void setBinzip_member_id(String binzip_member_id) {
		this.binzip_member_id = binzip_member_id;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
}


