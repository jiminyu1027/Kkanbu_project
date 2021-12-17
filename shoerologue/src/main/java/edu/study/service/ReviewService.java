package edu.study.service;

import java.util.List;

import edu.study.vo.ReviewVO;

public interface ReviewService {

	void insert(ReviewVO vo) throws Exception;
	
	List<ReviewVO> prvlist(int pidx) throws Exception;
	
	List<ReviewVO> mylist(int midx) throws Exception;
	
	List<ReviewVO> masterList() throws Exception;
	
	void updateDel(int rvidx) throws Exception;
}
