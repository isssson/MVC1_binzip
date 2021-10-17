package binzip.reserve;

import java.sql.*;

public class Binzip_ReserveDTO {
	
	private String binzip_member_id;
	private int binzip_host_bbs_idx;
	private String reserve_startdate;
	private String reserve_enddate;
	private int peoplenum;
	private String reserver_name;
	private String reserver_phone;
	private String payer;
	private String reserver_bank;
	private String reserver_acnumber;
	private int cost; 
	private String request;
	private int status;
	private Date todaydate;
	
	public Binzip_ReserveDTO() {
		super();
	}

	public Binzip_ReserveDTO(String binzip_member_id, int binzip_host_bbs_idx, String reserve_startdate,
			String reserve_enddate, int peoplenum, String reserver_name, String reserver_phone, String payer,
			String reserver_bank, String reserver_acnumber, int cost, String request, int status, Date todaydate) {
		super();
		this.binzip_member_id = binzip_member_id;
		this.binzip_host_bbs_idx = binzip_host_bbs_idx;
		this.reserve_startdate = reserve_startdate;
		this.reserve_enddate = reserve_enddate;
		this.peoplenum = peoplenum;
		this.reserver_name = reserver_name;
		this.reserver_phone = reserver_phone;
		this.payer = payer;
		this.reserver_bank = reserver_bank;
		this.reserver_acnumber = reserver_acnumber;
		this.cost = cost;
		this.request = request;
		this.status = status;
		this.todaydate = todaydate;
	}

	public String getBinzip_member_id() {
		return binzip_member_id;
	}

	public void setBinzip_member_id(String binzip_member_id) {
		this.binzip_member_id = binzip_member_id;
	}

	public int getBinzip_host_bbs_idx() {
		return binzip_host_bbs_idx;
	}

	public void setBinzip_host_bbs_idx(int binzip_host_bbs_idx) {
		this.binzip_host_bbs_idx = binzip_host_bbs_idx;
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

	public String getPayer() {
		return payer;
	}

	public void setPayer(String payer) {
		this.payer = payer;
	}

	public String getReserver_bank() {
		return reserver_bank;
	}

	public void setReserver_bank(String reserver_bank) {
		this.reserver_bank = reserver_bank;
	}

	public String getReserver_acnumber() {
		return reserver_acnumber;
	}

	public void setReserver_acnumber(String reserver_acnumber) {
		this.reserver_acnumber = reserver_acnumber;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getTodaydate() {
		return todaydate;
	}

	public void setTodaydate(Date todaydate) {
		this.todaydate = todaydate;
	}
	
}
