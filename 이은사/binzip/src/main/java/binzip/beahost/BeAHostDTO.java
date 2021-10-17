package binzip.beahost;

import java.sql.Date;

public class BeAHostDTO {
	private int idx;
	private String binzip_member_id;
	private String bank;
	private String acnumber;
	private Date stardate;
	
	public BeAHostDTO() {}

	public BeAHostDTO(int idx, String binzip_member_id, String bank, String acnumber, Date stardate) {
		super();
		this.idx = idx;
		this.binzip_member_id = binzip_member_id;
		this.bank = bank;
		this.acnumber = acnumber;
		this.stardate = stardate;
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

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAcnumber() {
		return acnumber;
	}

	public void setAcnumber(String acnumber) {
		this.acnumber = acnumber;
	}

	public Date getStardate() {
		return stardate;
	}

	public void setStardate(Date stardate) {
		this.stardate = stardate;
	}
	
	
}
