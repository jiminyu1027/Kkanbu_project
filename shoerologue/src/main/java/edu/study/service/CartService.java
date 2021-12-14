package edu.study.service;

import java.util.List;

import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;


public interface CartService {

	void insert(CartVO cvo) throws Exception;
	List<CartVO> list(int midx) throws Exception;
	public void del(int ctidx) throws Exception;
	public void delAll(int midx) throws Exception;
	void update(CartVO cvo) throws Exception;
	public int sum(int midx) throws Exception;
	public int sumMoney(int midx)throws Exception;
	List<CartVO> order(CartVO cvo) throws Exception;
}
