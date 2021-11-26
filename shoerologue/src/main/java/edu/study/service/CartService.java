package edu.study.service;

import java.util.List;

import edu.study.vo.CartVO;


public interface CartService {

	public void insert(CartVO cvo) throws Exception;
	public List<CartVO> list(String mId) throws Exception;
	public void del(int ctidx) throws Exception;
	public void dellAll(String mId) throws Exception;
	public void update(int ctidx) throws Exception;
	public int sumMoney(String mId) throws Exception;
	public int count(String mId, int pidx) throws Exception;
	public void updateCart(CartVO cvo) throws Exception;
	public void modifyCart(CartVO cvo) throws Exception;
}
