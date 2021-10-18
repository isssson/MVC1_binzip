package binzip.mypage.reserve;

public class GuestReserveDTO {

	private int bbsidx;
	private String id;
	private String reserve_startdate;
	private String reserve_enddate;
	private int peoplenum;
	private String zipname;
	private String ziptype;
	private String zipaddr;
	private int cost;
	private int status;
	private String imgpath;
	private String payer;
	private String request;
	private String host_name;
	private String host_phone;

	public GuestReserveDTO(int bbsidx, String reserve_startdate, String reserve_enddate, int peoplenum, int cost,
			int status, String zipname, String ziptype, String zipaddr, String imgpath) {
		super();
		this.bbsidx = bbsidx;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.status = status;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.imgpath = imgpath;
	}

	public GuestReserveDTO(String zipname, String ziptype, String zipaddr, String reserve_startdate,
			String reserve_enddate, int peoplenum, int cost, int status, String host_name, String host_phone,
			String payer, String request, String imgpath) {
		super();
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.status = status;
		this.host_name = host_name;
		this.host_phone = host_phone;
		this.payer = payer;
		this.request = request;
		this.imgpath = imgpath;
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

	public String getReserve_startdate() {
		return reserve_startdate;
	}

	public void setReserve_startdate(String reserve_startdate) {
		this.reserve_startdate = reserve_startdate;
	}

	public String getReserve_enddate() {
		return reserve_enddate;
	}

	public void setReserve_enddate(String reserve_enddate) {
		this.reserve_enddate = reserve_enddate;
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

	public String getPayer() {
		return payer;
	}

	public void setPayer(String payer) {
		this.payer = payer;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public String getHost_name() {
		return host_name;
	}

	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}

	public String getHost_phone() {
		return host_phone;
	}

	public void setHost_phone(String host_phone) {
		this.host_phone = host_phone;
	}

}