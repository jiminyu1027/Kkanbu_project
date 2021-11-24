package edu.study.service;

import java.util.List;

import edu.study.vo.CartVO;


public interface CartService {

	public List<CartVO> list(int midx) throws Exception;
	public void del(CartVO cvo) throws Exception;
}
