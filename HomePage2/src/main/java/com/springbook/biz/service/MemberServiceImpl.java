package com.springbook.biz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.entry.MemberVO;

@Service("memberService")
public  class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAOJPA memberDAOJPA;

	@Override
	public void addMember(MemberVO mvo) {
        
		memberDAOJPA.addMember(mvo);
	}

	@Override
	public void updateMember(MemberVO mvo) {
		memberDAOJPA.updateMember(mvo);
	}

	@Override
	public void deleteMember(MemberVO mvo) {
		memberDAOJPA.deleteMember(mvo);
	}

	@Override
	public MemberVO getMember(MemberVO mvo) {
		if(mvo.getId()==null||mvo.getId().equals("")){
			throw new IllegalArgumentException("���̵�� �ݵ�� �Է��ؾ� �մϴ�.");
		}
		return memberDAOJPA.getMember(mvo);
	}

	@Override
	public MemberVO getMemberByNameAndPhone(MemberVO mvo) {
		return memberDAOJPA.getMemberByNameAndPhone(mvo);
	}

	@Override
	public MemberVO getMemberByNameAndId(MemberVO mvo) {
		return memberDAOJPA.getMemberByNameAndId(mvo);
	}

	@Override
	public void changePwd(MemberVO mvo) {
		memberDAOJPA.changePwd(mvo);
	}

	@Override
	public MemberVO getAdminMember(MemberVO mvo) {
		if(mvo.getId()==null||mvo.getId().equals("")){
			throw new IllegalArgumentException("���̵�� �ݵ�� �Է��ؾ� �մϴ�.");
		}
		return memberDAOJPA.getAdminMember(mvo);
	}

	@Override
	public MemberVO checkIdDoubleOrNotproc(MemberVO mvo) {
		
		return memberDAOJPA.checkIdDoubleOrNotproc(mvo);
		
	}
		
	

		
	}
	
	

	/*public List<MemberVO> getMemberList(MemberVO mvo) {
		return memberDAOJPA.getMemberList(mvo);
	}
*/
	
	

	
