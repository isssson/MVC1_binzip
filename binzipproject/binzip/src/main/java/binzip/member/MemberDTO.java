package binzip.member;

import java.sql.*;
import java.sql.Date;

public class MemberDTO {
	
	private int idx;
	private String id;
	private String pwd;
	private String question;
	private String answer;
	private String name;
	private String birthdate;
	private String phone;
	private String email;
	private String address;
	private Date joindate;
	private int grade;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(int idx, String id, String pwd, String question, String answer, String name, String birthdate,
			String phone, String email, String address, Date joindate, int grade) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.question = question;
		this.answer = answer;
		this.name = name;
		this.birthdate = birthdate;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.joindate = joindate;
		this.grade = grade;
	}
	
	public MemberDTO(String name, int grade) {
		super();
		this.name=name;
		this.grade=grade;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
