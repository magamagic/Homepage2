package com.springbook.biz.boardService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springbook.biz.board.EstimationVO;

@Service("estimationService")
public class EstimationServiceimple implements EstimationService {

	@Autowired
	private EstimationDAO estimationDAO;
	


	@Override
	public void insertEstimation(EstimationVO vo) {
		estimationDAO.insertEstimation(vo);
	}

	@Override
	public void updateEstimation(EstimationVO vo) {
		estimationDAO.updateEstimation(vo);
	}

	@Override
	public void deleteEstimation(EstimationVO vo) {
		estimationDAO.deleteEstimation(vo);
	}

	@Override
	public EstimationVO getEstimation(EstimationVO vo) {
		return estimationDAO.getEstimation(vo);
	}

	@Override
	public List<EstimationVO> getMemberEstimationList(EstimationVO vo) {
		return estimationDAO.getMemberEstimationList(vo);
	}

	@Override
	public List<EstimationVO> getEstimationList(EstimationVO vo) {
		return estimationDAO.getEstimationList(vo);
	}

	@Override
	public EstimationVO getEstimationDetail(EstimationVO vo) {
		return estimationDAO.getEstimationDetail(vo);
	}

	@Override
	public void insertEstimationMemo(EstimationVO vo) {
		estimationDAO.insertEstimationMemo(vo);
		
	}

	@Override
	public void updateEstimationConfirm(EstimationVO vo) {
		estimationDAO.updateEstimationConfirm(vo);
		
	}

	
	//현재 페이지 에 해당하는 리스트 구하기 메소드
	@Override
	public List<EstimationVO> getEstimationList(PageRequest pageRequest) {
		return estimationDAO.findAll(pageRequest);
	}

   //전체 페이지 구하기 메소드
	@Override
	public Object getTotalPage(PageRequest pageRequest) {
		return estimationDAO.findTotalPage(pageRequest);
	}

	

	

}
