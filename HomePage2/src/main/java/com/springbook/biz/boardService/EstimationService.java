package com.springbook.biz.boardService;

import java.util.List;

import org.springframework.data.domain.PageRequest;

import com.springbook.biz.board.EstimationVO;

public interface EstimationService {

	// CRUD 硫�����
	// insert
	void insertEstimation(EstimationVO vo);

	// update
	void updateEstimation(EstimationVO vo);

	// delete
	void deleteEstimation(EstimationVO vo);

	EstimationVO getEstimation(EstimationVO vo);

	List<EstimationVO> getMemberEstimationList(EstimationVO vo);
	
	List<EstimationVO> getEstimationList(EstimationVO vo);

	EstimationVO getEstimationDetail(EstimationVO vo);

	void insertEstimationMemo(EstimationVO vo);

	void updateEstimationConfirm(EstimationVO vo);

	//페이징에 사용되는 두 메소드
	//해당페이지의 리스트
	List<EstimationVO> getEstimationList(PageRequest pageRequest);
	//전체 페이지 번호
	Object getTotalPage(PageRequest pageRequest);
}
