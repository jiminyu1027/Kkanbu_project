package edu.study.service;

import java.util.List;

import edu.study.vo.QaVO;

public interface QaService {

	void insert(QaVO vo)throws Exception;
	
	List<QaVO> pqlist() throws Exception;
	
	QaVO detail(int pqidx)throws Exception;
}
