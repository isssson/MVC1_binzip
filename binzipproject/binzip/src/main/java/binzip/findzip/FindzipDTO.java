package binzip.findzip;

import java.util.*;

public class FindzipDTO {
	
	private String zipname;
	private String zipaddr;
	private Date startDate;
	private Date endDate;
	private int peoplenum;
	private int cost;
	private String ziptype;
	
	public FindzipDTO() {
		super();	
	}

	public FindzipDTO(String zipname, String zipaddr, Date startDate, Date endDate, int peoplenum, int cost,
			String ziptype) {
		super();
		this.zipname = zipname;
		this.zipaddr = zipaddr;
		this.startDate = startDate;
		this.endDate = endDate;
		this.peoplenum = peoplenum;
		this.cost = cost;
		this.ziptype = ziptype;
	}

	public String getZipname() {
		return zipname;
	}

	public void setZipname(String zipname) {
		this.zipname = zipname;
	}

	public String getZipaddr() {
		return zipaddr;
	}

	public void setZipaddr(String zipaddr) {
		this.zipaddr = zipaddr;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getPeoplenum() {
		return peoplenum;
	}

	public void setPeoplenum(int peoplenum) {
		this.peoplenum = peoplenum;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getZiptype() {
		return ziptype;
	}

	public void setZiptype(String ziptype) {
		this.ziptype = ziptype;
	}
	
	
	
}

