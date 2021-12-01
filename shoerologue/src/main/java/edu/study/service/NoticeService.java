package edu.study.service;

import java.util.List;

import edu.study.vo.NoticeVO;

public interface NoticeService {

	void insert(NoticeVO vo) throws Exception;
	
	List<NoticeVO> nlist() throws Exception;
	
	NoticeVO detail(int nidx) throws Exception;
	
	void delete(int nidx)throws Exception;
}
