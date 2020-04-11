package jpaproject;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.springbook.biz.entry.MemberVO;



public class BoardServiceClient {

	public static void main(String[] args) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaproject");
			EntityManager em = emf.createEntityManager();
			
			EntityTransaction tx = em.getTransaction();
			
			try {
				//Transaction 시작
				tx.begin();
				
				MemberVO mvo= new MemberVO();
				
				mvo.setId("JAP");
				mvo.setPassword("1234");
				mvo.setName("홍길동");
				mvo.setGender("남");
				
				//글 등록 처리
				em.persist(mvo);
				
			
				
								
				
				tx.commit();
			} catch (Exception e) {
				tx.rollback();
e.printStackTrace();
			}finally {
				
					em.close();
			}
		emf.close();
	}

}
