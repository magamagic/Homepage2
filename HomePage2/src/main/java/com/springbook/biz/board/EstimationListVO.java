package com.springbook.biz.board;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "estimationList")
@XmlAccessorType(XmlAccessType.FIELD)
public class EstimationListVO {
	@XmlElement(name = "estimation")
	private List<EstimationVO> estimationList;

	public List<EstimationVO> getEstimationList() {
		return estimationList;
	}

	public void setEstimationList(List<EstimationVO> estimationList) {
		this.estimationList = estimationList;
	}
}
