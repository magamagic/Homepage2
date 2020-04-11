package com.springbook.biz.service;

import com.springbook.biz.entry.MemberVO;

public interface MemberService {
	
	
	void addMember(MemberVO mvo);

	
	void updateMember(MemberVO mvo);

	
	void deleteMember(MemberVO mvo);

	
	MemberVO getMember(MemberVO mvo);

	MemberVO getMemberByNameAndPhone(MemberVO mvo);

	MemberVO getMemberByNameAndId(MemberVO mvo);

	void changePwd(MemberVO mvo);


	MemberVO getAdminMember(MemberVO mvo);
	MemberVO checkIdDoubleOrNotproc(MemberVO mvo);

/*	
	List<MemberVO> getMemberList(MemberVO mvo);*/
}
