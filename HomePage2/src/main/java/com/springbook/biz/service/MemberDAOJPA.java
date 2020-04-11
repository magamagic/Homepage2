package com.springbook.biz.service;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.springbook.biz.entry.MemberVO;

// DAO(Data Access Object)

@Repository("memberDAO")
@EnableTransactionManagement
public class MemberDAOJPA {
	@PersistenceContext
	private EntityManager em;

	@Transactional
	public void addMember(MemberVO mvo) {
		System.out.println("====>jpa add()");
		mvo.setRegDate(new Date());
		System.out.println("===>jap mvo:" + mvo);
		em.persist(mvo);
	}

	@Transactional
	public void updateMember(MemberVO mvo) {
		System.out.println("===> jpa updateMember()");
		System.out.println("===>jap mvo:" + mvo);
		MemberVO findVo = em.find(MemberVO.class, mvo.getId());
		findVo = mvo;
		System.out.println(mvo);
		em.merge(findVo);

	}

	@Transactional
	public void deleteMember(MemberVO mvo) {
		System.out.println("===> jpa deleteMember()");
		System.out.println("===> jpa updateMember()");
		System.out.println("===>jap mvo:" + mvo);
		MemberVO findVo = em.find(MemberVO.class, mvo.getId());
		System.out.println("===>jap mvo:" + findVo);
		em.remove(findVo);

	}

	public MemberVO getMember(MemberVO mvo) {
		System.out.println("===> jpa getMember()");
		System.out.println("===>mvo.id:" + mvo.getId());
		System.out.println("===>mvo.password:" + mvo.getPassword());

		MemberVO mvo2 = em.find(MemberVO.class, mvo.getId());
		System.out.println(mvo2);
		if (!(mvo.getPassword().equals(mvo2.getPassword()))) {
			throw new IllegalArgumentException("wrong password");
		}
		return mvo2;

	}

	public MemberVO getAdminMember(MemberVO mvo) {
		System.out.println("===> jpa getAdminMember()");
		System.out.println("===>mvo.id:" + mvo.getId());
		System.out.println("===>mvo.password:" + mvo.getPassword());

		MemberVO mvo2 = em.find(MemberVO.class, mvo.getId());

		System.out.println(mvo2);

		System.out.println("role:" + mvo2.getEntry_role());
		if (mvo2.getEntry_role() == null) {

			throw new NullPointerException("admin login neccessary");
		}

		else if (!(mvo.getPassword().equals(mvo2.getPassword()))) {
			throw new IllegalArgumentException("wrong password");
		} else
			return mvo2;
	}

	public MemberVO getMemberByNameAndPhone(MemberVO mvo) {
		TypedQuery<MemberVO> query = em.createQuery("SELECT m FROM MemberVO m WHERE m.name = :name and m.phone=:phone",
				MemberVO.class);
		MemberVO member = query.setParameter("name", mvo.getName()).setParameter("phone", mvo.getPhone())
				.getSingleResult();
		System.out.println("member to find with phone:" + member);
		return member;
	}

	public MemberVO getMemberByNameAndId(MemberVO mvo) {
		TypedQuery<MemberVO> query = em.createQuery("SELECT m FROM MemberVO m WHERE m.name = :name and m.id=:id",
				MemberVO.class);
		MemberVO member = query.setParameter("name", mvo.getName()).setParameter("id", mvo.getId()).getSingleResult();
		System.out.println("member to find with id:" + member);
		return member;
	}

	@Transactional
	public void changePwd(MemberVO mvo) {
		MemberVO newVo = em.find(MemberVO.class, mvo.getId());
		newVo.setPassword(mvo.getPassword());
		System.out.println("mvo:" + mvo);
		em.merge(newVo);
		System.out.println("newVo:" + newVo);

	}

	public MemberVO checkIdDoubleOrNotproc(MemberVO mvo) {
		 
		System.out.println("===>mvo.id:" + mvo.getId());
		MemberVO findVo = em.find(MemberVO.class, mvo.getId());
	/*		if(findVo==null)
			return mvo;
		else return findVo;*/
		 return findVo;//조회한 결과 그대로 return함 null혹은 findvo로->null여부는 controller에서 체크
	}
}