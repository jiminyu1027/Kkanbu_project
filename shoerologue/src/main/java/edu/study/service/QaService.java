package edu.study.service;

import java.util.List;

import edu.study.vo.QaVO;

public interface QaService {

	void insert(QaVO vo)throws Exception;
	
	List<QaVO> pqlist(int midx) throws Exception;
	
	List<QaVO> masterList() throws Exception;
	
	List<QaVO> productList(int pidx) throws Exception;
	
	QaVO detail(int pqidx)throws Exception;
	
	void update(int pqidx) throws Exception;
}
