package customer.vo;

import java.util.Date;

public class Member {

/*	
	id	varchar2(20 byte)
	pwd	varchar2(10 byte)
	name	varchar2(20 byte)
	gender	varchar2(10 byte)
	birth	date
	is_lunar	varchar2(10 byte)
	cphone	varchar2(15 byte)
	email	varchar2(30 byte)
	habit	varchar2(30 byte)
	regdate	date
	*/
	
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private Date birth;
	private String is_lunar;
	private String cphone;
	private String email;
	private String habit;
	private Date regdate;
	
	
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getIs_lunar() {
		return is_lunar;
	}
	public void setIs_lunar(String is_lunar) {
		this.is_lunar = is_lunar;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHabit() {
		return habit;
	}
	public void setHabit(String habit) {
		this.habit = habit;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
}
