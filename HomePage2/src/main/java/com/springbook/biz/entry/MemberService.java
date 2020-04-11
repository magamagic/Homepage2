package com.springbook.biz.entry;

import java.util.List;

public interface MemberService {
	// CRUD 기능의 메소드 구현
	// 회원 등록
	void addMember(MemberVO mvo);

	// 회원 수정
	void updateMember(MemberVO mvo);

	// 회원 삭제
	void deleteMember(MemberVO mvo);

	// 회원 얻기
	MemberVO getMember(MemberVO mvo);


/*	// 회원 목록 조회
	List<MemberVO> getMemberList(MemberVO mvo);*/
}
