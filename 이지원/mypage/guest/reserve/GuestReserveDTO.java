package binzip.mypage.guest.reserve;

import java.sql.Date;

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
	private String reserver_name;
	private String reserver_phone;
	private String request;
	
	public GuestReserveDTO() {
		super();
		System.out.println("GuestDTO 호출");
	}



	public GuestReserveDTO(int bbsidx, String id, String reserve_startdate, String reserve_enddate, int peoplenum,
			String zipname, String ziptype, String zipaddr, int cost, int status, String imgpath, String reserver_name,
			String reserver_phone, String request) {
		super();
		this.bbsidx = bbsidx;
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
		this.reserver_name = reserver_name;
		this.reserver_phone = reserver_phone;
		this.request = request;
	}



	public GuestReserveDTO(String reserve_startdate, String reserve_enddate, int peoplenum, String zipname,
			String ziptype, String zipaddr, int cost, int status, String imgpath) {
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
	}
	

	public GuestReserveDTO(String reserve_startdate, String reserve_enddate, int peoplenum, int cost,
			String reserver_name, String reserver_phone, String request) {
		super();
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.reserver_name = reserver_name;
		this.reserver_phone = reserver_phone;
		this.request = request;
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



	public String getReserver_name() {
		return reserver_name;
	}



	public void setReserver_name(String reserver_name) {
		this.reserver_name = reserver_name;
	}



	public String getReserver_phone() {
		return reserver_phone;
	}



	public void setReserver_phone(String reserver_phone) {
		this.reserver_phone = reserver_phone;
	}



	public String getRequest() {
		return request;
	}



	public void setRequest(String request) {
		this.request = request;
	}


	
	

	

}
