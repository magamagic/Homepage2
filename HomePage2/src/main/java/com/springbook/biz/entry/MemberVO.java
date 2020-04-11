package com.springbook.biz.entry;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name="mems")
public class MemberVO {
	@Id
	@Column(name="id")
	private String id;
	@Column(name="password")
	private String password;
	@Column(name="name")
	private String name;
	@Column(name="gender")
	private String gender;
	@Column(name="birth")
	private String birth;
	@Column(name="mail")
	private String mail;
	@Column(name="phone")
	private String phone;
	@Column(name="zipcode")
	private String zipcode;
	@Column(name="address")
	private String address;
	@Column(name="detailaddress")
	private String detailaddress;
	@Column(name="extraaddress")
	private String extraaddress;
	@Transient
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="regdate")
	private Date regDate;
	@Column(name="entry_role")
	private String entry_role;
	
	
	public MemberVO() {			}
	@Transient
	private String searchCondition;//�˻� ����
	@Transient
	private String searchKeyword;//�˻� ����
	
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public String getExtraaddress() {
		return extraaddress;
	}
	public void setExtraaddress(String extraaddress) {
		this.extraaddress = extraaddress;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getEntry_role() {
		return entry_role;
	}
	public void setEntry_role(String entry_role) {
		this.entry_role = entry_role;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender="
				+ gender + ", birth=" + birth + ", mail=" + mail + ", phone=" + phone + ", zipcode=" + zipcode
				+ ", address=" + address + ", detailaddress=" + detailaddress + ", extraaddress=" + extraaddress
				+ ", regDate=" + regDate + ", entry_role=" + entry_role + "]";
	}
	
	
	
}
