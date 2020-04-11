package com.springbook.biz.board;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.springframework.beans.factory.annotation.Configurable;

@Entity
@Table(name = "ESTIMATION")
public class EstimationVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int seq;
	private String product;
	@Column(length = 800)
	private String url;
	private String email;
	private String id;
	private String name;
	private String phone;
	private String memo;
	private String regDate;
	private String purchase;
	private String shipping_address;

	public EstimationVO() {
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "해당 요청 정보 [번호=" + seq + ", 상품명=" + product + ", url=" + url + ", E메일=" + email + ", 아이디=" + id
				+ ", 이름=" + name + ", 전화번호=" + phone + ", 관리자 memo=" + memo + ", 요청 날짜=" + regDate + ", 배송 주소=" + shipping_address + "]";
	}

	public String getShipping_address() {
		return shipping_address;
	}

	public void setShipping_address(String shipping_address) {
		this.shipping_address = shipping_address;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getPurchase() {
		return purchase;
	}

	public void setPurchase(String purchase) {
		this.purchase = purchase;
	}

}
