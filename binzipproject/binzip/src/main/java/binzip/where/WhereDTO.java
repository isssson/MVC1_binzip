package binzip.where;

import java.sql.Date;

public class WhereDTO {
	
	private String siDo;
	private String gu;
	private int startYear;
	private int startMonth;
	private int startDate;
	private int endYear;
	private int endMonth;
	private int endDate;
	
	public WhereDTO() {
		System.out.println("WhereDTO 호출");
	}

	public WhereDTO(String siDo, String gu, int startYear, int startMonth, int startDate, int endYear, int endMonth,
			int endDate) {
		super();
		this.siDo = siDo;
		this.gu = gu;
		this.startYear = startYear;
		this.startMonth = startMonth;
		this.startDate = startDate;
		this.endYear = endYear;
		this.endMonth = endMonth;
		this.endDate = endDate;
	}
	
	public WhereDTO(String siDo) {
		super();
		this.gu = gu;
	}

	public String getSiDo() {
		return siDo;
	}

	public void setSiDo(String siDo) {
		this.siDo = siDo;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public int getStartYear() {
		return startYear;
	}

	public void setStartYear(int startYear) {
		this.startYear = startYear;
	}

	public int getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(int startMonth) {
		this.startMonth = startMonth;
	}

	public int getStartDate() {
		return startDate;
	}

	public void setStartDate(int startDate) {
		this.startDate = startDate;
	}

	public int getEndYear() {
		return endYear;
	}

	public void setEndYear(int endYear) {
		this.endYear = endYear;
	}

	public int getEndMonth() {
		return endMonth;
	}

	public void setEndMonth(int endMonth) {
		this.endMonth = endMonth;
	}

	public int getEndDate() {
		return endDate;
	}

	public void setEndDate(int endDate) {
		this.endDate = endDate;
	}
	
}
