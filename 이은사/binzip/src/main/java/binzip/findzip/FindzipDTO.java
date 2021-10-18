package binzip.findzip;

import java.sql.*;

public class FindzipDTO {
	
	

	private int idx;
	private int bbs_idx;
	private String binzip_member_id;
	private String host_name;
	private String host_email;
	private String host_phone;
	private String host_bank;
	private String host_acnumber;
	private String zipname;
	private String ziptype;
	private String zipaddr;
	private int cost;
	private int peoplenum;
	private Date todaydate;
	private String contents;
	private String host_bbs_startdate;
	private String host_bbs_enddate;
	private String sql;
	
	private String imgpath;
	
	private int cp;
	private int listSize;
	
	private String searchGb;
	
	private String inDate;
	private String outDate;
	
	
	
	
	public FindzipDTO() {
		super();
	}

	public FindzipDTO(int idx, String binzip_member_id, String host_name, String host_email, String host_phone,
			String host_bank, String host_acnumber, String zipname, String ziptype, String zipaddr, int cost,
			int peoplenum, Date todaydate, String contents, String host_bbs_startdate, String host_bbs_enddate,
			String imgpath) {
		super();
		this.idx = idx;
		this.binzip_member_id = binzip_member_id;
		this.host_name = host_name;
		this.host_email = host_email;
		this.host_phone = host_phone;
		this.host_bank = host_bank;
		this.host_acnumber = host_acnumber;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.peoplenum = peoplenum;
		this.todaydate = todaydate;
		this.contents = contents;
		this.host_bbs_startdate = host_bbs_startdate;
		this.host_bbs_enddate = host_bbs_enddate;
		this.imgpath = imgpath;
	}
	
	//list page DAO constructor
	public FindzipDTO(int idx, String binzip_member_id, String zipname, String ziptype, String zipaddr, int cost,
			int peoplenum, String imgpath) {
		super();
		this.idx = idx;
		this.binzip_member_id = binzip_member_id;
		this.zipname = zipname;
		this.ziptype = ziptype;
		this.zipaddr = zipaddr;
		this.cost = cost;
		this.peoplenum = peoplenum;
		this.imgpath = imgpath;
	}
	
	public FindzipDTO(int idx, String zipname, String imgpath, int peoplenum, int cost, String ziptype, 
			String host_phone, String zipaddr, String host_bbs_startdate, String host_bbs_enddate, String contents) {
		this.idx = idx;
		this.zipname = zipname;
		this.imgpath = imgpath;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.ziptype = ziptype;
		this.host_phone = host_phone;
		this.zipaddr = zipaddr;
		this.host_bbs_startdate = host_bbs_startdate;
		this.host_bbs_enddate = host_bbs_enddate;
		this.contents = contents;
	}

	
	
	
	

	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getBinzip_member_id() {
		return binzip_member_id;
	}

	public void setBinzip_member_id(String binzip_member_id) {
		this.binzip_member_id = binzip_member_id;
	}

	public String getHost_name() {
		return host_name;
	}

	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}

	public String getHost_email() {
		return host_email;
	}

	public void setHost_email(String host_email) {
		this.host_email = host_email;
	}

	public String getHost_phone() {
		return host_phone;
	}

	public void setHost_phone(String host_phone) {
		this.host_phone = host_phone;
	}

	public String getHost_bank() {
		return host_bank;
	}

	public void setHost_bank(String host_bank) {
		this.host_bank = host_bank;
	}

	public String getHost_acnumber() {
		return host_acnumber;
	}

	public void setHost_acnumber(String host_acnumber) {
		this.host_acnumber = host_acnumber;
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

	public int getPeoplenum() {
		return peoplenum;
	}

	public void setPeoplenum(int peoplenum) {
		this.peoplenum = peoplenum;
	}

	public Date getTodaydate() {
		return todaydate;
	}

	public void setTodaydate(Date todaydate) {
		this.todaydate = todaydate;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getHost_bbs_startdate() {
		return host_bbs_startdate;
	}

	public void setHost_bbs_startdate(String host_bbs_startdate) {
		this.host_bbs_startdate = host_bbs_startdate;
	}

	public String getHost_bbs_enddate() {
		return host_bbs_enddate;
	}

	public void setHost_bbs_enddate(String host_bbs_enddate) {
		this.host_bbs_enddate = host_bbs_enddate;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public String getSearchGb() {
		return searchGb;
	}

	public void setSearchGb(String searchGb) {
		this.searchGb = searchGb;
	}

	public String getInDate() {
		return inDate;
	}

	public void setInDate(String inDate) {
		this.inDate = inDate;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}

	public int getBbs_idx() {
		return bbs_idx;
	}

	public void setBbs_idx(int bbs_idx) {
		this.bbs_idx = bbs_idx;
	}
	
	
	
	
	
}