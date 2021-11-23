package edu.study.service;

import java.util.List;

import edu.study.vo.HotProductVO;


public interface HotProductService {

		List<HotProductVO> hlist() throws Exception;
		HotProductVO detail(int hidx) throws Exception;
	
}
