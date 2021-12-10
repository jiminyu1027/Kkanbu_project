package edu.study.service;

import java.util.List;

import edu.study.vo.QaAnswerVO;

public interface QaAnswerService {

	void insert(QaAnswerVO vo) throws Exception;
	
	List<QaAnswerVO> alist(int pqidx) throws Exception;
}
