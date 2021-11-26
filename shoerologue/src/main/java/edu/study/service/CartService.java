package edu.study.service;

import java.util.List;

import edu.study.vo.CartVO;
import edu.study.vo.ProductVO;


public interface CartService {

	public void insert(CartVO cvo) throws Exception;
	List<CartVO> list(int midx) throws Exception;
	public void del(int ctidx) throws Exception;
	public void dellAll(String mId) throws Exception;
	public void update(int ctidx) throws Exception;
	public int sum(int midx) throws Exception;
	public int count(String mId, int pidx) throws Exception;
	public void updateCart(CartVO cvo) throws Exception;
	public void modifyCart(CartVO cvo) throws Exception;
}
