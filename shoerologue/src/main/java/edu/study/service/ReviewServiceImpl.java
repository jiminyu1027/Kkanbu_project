package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.ReviewDAO;
import edu.study.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO ReviewDao;
	
	@Override
	public void insert(ReviewVO vo) throws Exception{
		
		ReviewDao.insert(vo);
	}
	
	@Override
	public List<ReviewVO> prvlist(int pidx) throws Exception{
		
		return ReviewDao.prvlist(pidx);
	}
	
	@Override
	public List<ReviewVO> mylist(int midx) throws Exception{
		
		return ReviewDao.mylist(midx);
	}
	
	@Override
	public void updateDel(int rvidx) throws Exception{
		
		ReviewDao.updateDel(rvidx);
	}
}
