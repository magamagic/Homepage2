package com.springbook.biz.boardService;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.springbook.biz.board.EstimationVO;
import com.springbook.biz.entry.MemberVO;

@Repository("estimationDAO")
@EnableTransactionManagement
public class EstimationDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void insertEstimation(EstimationVO vo) {
		System.out.println("jpa vo : " + vo);
		em.persist(vo);
	}

	@Transactional
	public void updateEstimation(EstimationVO vo) {
		em.merge(em.find(EstimationVO.class, vo.getSeq()));
	}

	@Transactional
	public void deleteEstimation(EstimationVO vo) {
		em.remove(em.find(EstimationVO.class, vo.getSeq()));
	}

	
	public EstimationVO getEstimation(EstimationVO vo) {
		return em.find(EstimationVO.class, vo.getSeq());
	}

	@Transactional
	public List<EstimationVO> getMemberEstimationList(EstimationVO vo) {
		System.out.println(vo.getId());
		TypedQuery<EstimationVO> query = em.createQuery("SELECT e FROM EstimationVO e WHERE e.id=:id",
				EstimationVO.class);
		List<EstimationVO> list = query.setParameter("id", vo.getId()).getResultList();
		System.out.println("ì¿¼ë¦¬ê²°ê³¼:" + list);
		return list;
		/*String jpql = "from EstimationVO e WHERE e.id=:id order by e.seq desc";
		List<EstimationVO> list = em.createQuery(jpql).getResultList();
		System.out.println("ì¿¼ë¦¬ ê²°ê³¼ : " + list + list.size());
		return list;*/
		/*
		 * TypedQuery<EstimationVO>
		 * query=em.createQuery("SELECT e FROM EstimationVO e WHERE e.id",
		 * EstimationVO.class); = query.setParameter("id", vo.getId()).getResultList();
		 * System.out.println("ì¿¼ë¦¬ ê²°ê³¼ : "+ estimation); return estimation;
		 */
	}

	@Transactional
	public List<EstimationVO> getEstimationList(EstimationVO vo) {
		String jpql = "from EstimationVO e order by e.seq desc";
		List<EstimationVO> list = em.createQuery(jpql).getResultList();
		System.out.println(list.size());
		return list;
	}

	public EstimationVO getEstimationDetail(EstimationVO vo) {
		TypedQuery<EstimationVO> query = em.createQuery("SELECT e FROM EstimationVO e WHERE e.seq = :seq",
				EstimationVO.class);
		EstimationVO evo = query.setParameter("seq", vo.getSeq()).getSingleResult();
		System.out.println("member to find with id:" + evo);
		return evo;
	}

	@Transactional
	public void insertEstimationMemo(EstimationVO vo) {
		System.out.println("insertMemo:"+vo);
		EstimationVO evo=em.find(EstimationVO.class, vo.getSeq());
		evo.setMemo(vo.getMemo());
		System.out.println(evo);
		em.merge(evo);
		
	}
	
	@Transactional
	public void updateEstimationConfirm(EstimationVO vo) {
		EstimationVO evo=em.find(EstimationVO.class, vo.getSeq());
		evo.setPurchase(vo.getPurchase());
		em.merge(evo);
	}

	//ÆäÀÌÂ¡
	public List<EstimationVO> findAll(Pageable page) {
   String jpql = "from EstimationVO e order by e.seq desc";
 List<EstimationVO> list = em.createQuery(jpql)
                .setFirstResult(page.getPageNumber()*page.getPageSize())//ÆäÀÌÁö ¹øÈ£ ¿Í ÆäÀÌÁö´ç ±Û¼ö ¼¼ÆÃ
                .setMaxResults(page.getPageSize())//±¸ÇÑ °á°úÀÇ ±Û¼ö
                .getResultList();//°á°ú ¹Þ±â
				                                 
		return list;
	}

	//ÆäÀÌÁö ±¸ÇÏ±â - ÀüÃ¼ °Ç¼ö /ÆäÀÌÁö´ç °Ç¼ö °á°ú¸¦ ¿Ã¸²Ã³¸®ÇÑ°á°ú¸¦ Á¤¼ö·Î ¹ÝÈ¯
	public int findTotalPage(Pageable page) {
		String jpql = "SELECT COUNT(e) FROM EstimationVO e ";
		return (int)(Math.ceil((((Long)em.createQuery(jpql).getSingleResult()).intValue()
				     /(double)page.getPageSize())));
	}
}
