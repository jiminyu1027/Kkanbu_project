package edu.study.service;

import java.util.List;

import edu.study.vo.InquiryVO;

public interface InquiryService {

	void insert(InquiryVO vo) throws Exception;
	
	List<InquiryVO> qlist(int midx) throws Exception;
//	마찬가지로 MIDX에 해당하는 리스트만 보여주기위해 MIDX를 참조한다.
	
	List<InquiryVO> masterList() throws Exception;
	
	InquiryVO detail(int qidx) throws Exception;
	
	void delete(int qidx) throws Exception;
}
