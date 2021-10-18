package binzip.mypage;

public class InfoDTO {
	
	private String id;
	private String question;
	private String answer;
	private String name;
	private String birthdate;
	private String phone;
	private String bank;
	private String acnumber;
	private String email;
	
	public InfoDTO() {
		super();
	}

	public InfoDTO(String id, String question, String answer, String name, String birthdate, String phone, String bank,
			String acnumber, String email) {
		super();
		this.id = id;
		this.question = question;
		this.answer = answer;
		this.name = name;
		this.birthdate = birthdate;
		this.phone = phone;
		this.bank = bank;
		this.acnumber = acnumber;
		this.email = email;
	}
	
	public InfoDTO(String id, String question, String answer, String name, String birthdate, String phone, String email) {
		super();
		this.id = id;
		this.question = question;
		this.answer = answer;
		this.name = name;
		this.birthdate = birthdate;
		this.phone = phone;
		this.email = email;
	}
	
	public InfoDTO(String bank,String acnumber) {
		super();
		this.bank = bank;
		this.acnumber = acnumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
