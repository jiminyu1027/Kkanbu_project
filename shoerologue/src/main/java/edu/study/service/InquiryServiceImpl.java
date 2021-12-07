package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.InquiryDAO;
import edu.study.vo.InquiryVO;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	InquiryDAO InquiryDao;
	
	@Override
	public void insert(InquiryVO vo) throws Exception{
		
		InquiryDao.insert(vo);
	}
	
	@Override
	public List<InquiryVO> qlist(int midx) throws Exception{
		
		return InquiryDao.qlist(midx);
	}
	
	@Override
	public List<InquiryVO> masterList() throws Exception{
		
		return InquiryDao.masterList();
	}
	
	@Override
	public InquiryVO detail(InquiryVO mvo) throws Exception{
		
		return InquiryDao.detail(mvo);
	}
	
	@Override
	public void update(int qidx) throws Exception{
		
		InquiryDao.update(qidx);
	}
}
