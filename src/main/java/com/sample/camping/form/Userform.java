package com.sample.camping.form;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class Userform {

	@NotBlank(message="아이디는 필수입력값입니다.")
	@Pattern(regexp="^[a-zA-Z0-9]{6,}$", message = "아이디는 6글자이상, 영어 대소문자/숫자만 입력하세요")
	private String id;
	
	@NotBlank(message = "비밀번호는 필수입력값입니다")
	@Pattern(regexp="^[a-zA-Z0-9]{8,}$", message = "비밀번호는 8글자이상, 영어 대소문자/숫자만 입력하세요")
	private String password;
	
	@NotBlank(message = "이름은 필수입력값입니다")
	@Pattern(regexp="^[가-힣]{2,}$", message = "이름은 2글자이상, 한글로 입력하세요")
	private String name;
	
	private String nickName;
	@NotBlank(message = "이메일은 필수입력값입니다")
	@Email(message = "유효한 이메일 형식이 아닙니다.")
	
	private String email;
	@NotBlank(message = "전화번호는 필수입력값입니다")
	@Pattern(regexp="^0\\d{1,2}-\\d{3,4}-\\d{4}$", message = "유효한 전화번호 형식이 아닙니다.")
	
	private String phoneNumber;
	private String profilePhoto;
	private String type;
	private String usedYn;
	private Date createDate;
	
	public Userform() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getProfilePhoto() {
		return profilePhoto;
	}

	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsedYn() {
		return usedYn;
	}

	public void setUsedYn(String usedYn) {
		this.usedYn = usedYn;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
