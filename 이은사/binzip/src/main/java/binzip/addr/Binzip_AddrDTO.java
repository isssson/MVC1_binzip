package binzip.addr;

public class Binzip_AddrDTO {

	private int post_number;
	private String si;
	private String si_gun_gu;
	private String bubjung_dong_name;
	private String lee_name;
	private String jibun_bonbun;
	private String jibun_bubun;
	
	public Binzip_AddrDTO() {
		super();
	}

	public Binzip_AddrDTO(int post_number, String si, String si_gun_gu, String bubjung_dong_name, String lee_name,
			String jibun_bonbun, String jibun_bubun) {
		super();
		this.post_number = post_number;
		this.si = si;
		this.si_gun_gu = si_gun_gu;
		this.bubjung_dong_name = bubjung_dong_name;
		this.lee_name = lee_name;
		this.jibun_bonbun = jibun_bonbun;
		this.jibun_bubun = jibun_bubun;
	}

	public int getPost_number() {
		return post_number;
	}

	public void setPost_number(int post_number) {
		this.post_number = post_number;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

	public String getSi_gun_gu() {
		return si_gun_gu;
	}

	public void setSi_gun_gu(String si_gun_gu) {
		this.si_gun_gu = si_gun_gu;
	}

	public String getBubjung_dong_name() {
		return bubjung_dong_name;
	}

	public void setBubjung_dong_name(String bubjung_dong_name) {
		this.bubjung_dong_name = bubjung_dong_name;
	}

	public String getLee_name() {
		return lee_name;
	}

	public void setLee_name(String lee_name) {
		this.lee_name = lee_name;
	}

	public String getJibun_bonbun() {
		return jibun_bonbun;
	}

	public void setJibun_bonbun(String jibun_bonbun) {
		this.jibun_bonbun = jibun_bonbun;
	}

	public String getJibun_bubun() {
		return jibun_bubun;
	}

	public void setJibun_bubun(String jibun_bubun) {
		this.jibun_bubun = jibun_bubun;
	}
		
}