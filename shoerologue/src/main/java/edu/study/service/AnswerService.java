package edu.study.service;

import java.util.List;

import edu.study.vo.AnswerVO;

public interface AnswerService {

	void insert(AnswerVO vo) throws Exception;
	
	List<AnswerVO> alist(int qidx) throws Exception;
}
