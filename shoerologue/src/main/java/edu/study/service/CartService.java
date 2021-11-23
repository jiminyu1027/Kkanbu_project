package edu.study.service;

import java.util.List;

import edu.study.vo.CartVO;


public interface CartService {

	public List<CartVO> list(int ctidx) throws Exception;
	
}
