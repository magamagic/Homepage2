package com.springbook.biz.entry;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="memberList")
@XmlAccessorType(XmlAccessType.FIELD)
public class MemberListVO {
	@XmlElement(name="member")
	private List<MemberVO> memberList;

	public List<MemberVO> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<MemberVO> boardList) {
		this.memberList = memberList;
	}
	
	

}
