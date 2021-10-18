package binzip.hosting;

import java.sql.*;

public class Binzip_HostingDTO {

	private int idx;
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
	
	public Binzip_HostingDTO() {
		super();
	}

	public Binzip_HostingDTO(int idx, String binzip_member_id, String host_name, String host_email, String host_phone,
			String host_bank, String host_acnumber, String zipname, String ziptype, String zipaddr, int cost,
			int peoplenum, Date todaydate, String contents, String host_bbs_startdate, String host_bbs_enddate) {
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
	
}
