package binzip.mypage.reserve;

public class GuestReserveDTO {

	
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
	
	private String binzip_member_id;
	private String r_id;
	
	private int bbsidx;
	private int r_cost;
	private int r_pnum;
	
	private int hcost;
	private int hpeoplenum;
	private String contents;
	
	
	public GuestReserveDTO(int bbsidx, String reserve_startdate, String reserve_enddate, int r_pnum, int r_cost,
			int status, String zipname, String ziptype, String zipaddr, String imgpath, String binzip_member_id) {
		super();
		this.bbsidx = bbsidx;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.r_pnum = r_pnum;
		this.r_cost = r_cost;
		this.status = status;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.imgpath = imgpath;
		this.binzip_member_id = binzip_member_id;
	}
	
	
	public GuestReserveDTO(String reserve_startdate, String reserve_enddate, int peoplenum, String zipname,
			String ziptype, String zipaddr, int cost, int status, String imgpath, String binzip_member_id, int bbsidx) {
		super();
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.status = status;
		this.imgpath = imgpath;
		this.binzip_member_id = binzip_member_id;
		this.bbsidx = bbsidx;
	}

	public GuestReserveDTO() {
		super();
	}

	//use
	public GuestReserveDTO(String id, String reserve_startdate, String reserve_enddate, int peoplenum, String zipname,
			String ziptype, String zipaddr, int cost, int status, String imgpath, String payer, String request,
			String host_name, String host_phone, String binzip_member_id, int bbsidx) {
		super();
		this.id = id;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.status = status;
		this.imgpath = imgpath;
		this.payer = payer;
		this.request = request;
		this.host_name = host_name;
		this.host_phone = host_phone;
		this.binzip_member_id = binzip_member_id;
		this.bbsidx = bbsidx;
	}

	
	
	
	
	
	
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

	public GuestReserveDTO(int bbsidx, String zipname, String ziptype, String zipaddr, String reserve_startdate,
			String reserve_enddate, int peoplenum, int cost) {
		super();
		this.bbsidx = bbsidx;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.cost = cost;
	}
	
	
	
	

	public GuestReserveDTO(int bbsidx, String reserve_startdate, String reserve_enddate, int r_pnum, int r_cost,
			int status, String zipname, String ziptype, String zipaddr, String imgpath, String binzip_member_id,
			String host_name, String host_phone, int hcost, String payer, int hpeoplenum, String contents) {
		super();
		this.bbsidx = bbsidx;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.r_pnum = r_pnum;
		this.r_cost = r_cost;
		this.status = status;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.imgpath = imgpath;
		this.binzip_member_id = binzip_member_id;
		this.host_name = host_name;
		this.host_phone = host_phone;
		this.hcost = hcost;
		this.payer = payer;
		this.hpeoplenum = hpeoplenum;
		this.contents = contents;
	}


	public int getHcost() {
		return hcost;
	}


	public void setHcost(int hcost) {
		this.hcost = hcost;
	}


	public int getHpeoplenum() {
		return hpeoplenum;
	}


	public void setHpeoplenum(int hpeoplenum) {
		this.hpeoplenum = hpeoplenum;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
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

	public String getBinzip_member_id() {
		return binzip_member_id;
	}

	public void setBinzip_member_id(String binzip_member_id) {
		this.binzip_member_id = binzip_member_id;
	}

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public int getR_cost() {
		return r_cost;
	}

	public void setR_cost(int r_cost) {
		this.r_cost = r_cost;
	}

	public int getR_pnum() {
		return r_pnum;
	}

	public void setR_pnum(int r_pnum) {
		this.r_pnum = r_pnum;
	}
	
	

}