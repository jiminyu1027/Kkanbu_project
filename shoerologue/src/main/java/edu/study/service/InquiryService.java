package edu.study.service;

import java.util.List;

import edu.study.vo.InquiryVO;

public interface InquiryService {

	void insert(InquiryVO vo) throws Exception;
	
	List<InquiryVO> qlist(int midx) throws Exception;
//	���������� MIDX�� �ش��ϴ� ����Ʈ�� �����ֱ����� MIDX�� �����Ѵ�.
	
	List<InquiryVO> masterList() throws Exception;
	
	InquiryVO detail(int qidx) throws Exception;
	
	void update(int qidx) throws Exception;
}
