package binzip.help;

import java.sql.Date;

public class HelpDTO {

	private int idx;
	private String binzip_member_id;
	private String subject;
	private String contents;
	private int readnum;
	private Date writedate;
	private int status;
	private int ref;
	private int lev;
	private int step;
	
	public HelpDTO() {
		super();
	}

	public HelpDTO(int idx, String binzip_member_id, String subject, String contents, 
			int readnum, Date writedate, int status, int ref, int lev, int step) {
		super();
		this.idx = idx;
		this.binzip_member_id = binzip_member_id;
		this.subject = subject;
		this.contents = contents;
		this.readnum = readnum;
		this.writedate = writedate;
		this.status = status;
		this.ref = ref;
		this.lev = lev;
		this.step = step;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getReadnum() {
		return readnum;
	}

	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}
	
	
	
}
