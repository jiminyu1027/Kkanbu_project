package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.CartDAO;
import edu.study.vo.CartVO;
import edu.study.vo.ProductVO;


@Service
public class CartServiceImple implements CartService{
	
	@Autowired
	CartDAO CartDao;

	@Override
	public void insert(CartVO cvo) throws Exception{
		CartDao.insert(cvo);
	}
	
	@Override
	public void del(int ctidx) throws Exception {
		CartDao.del(ctidx);
	}

	@Override
	public void dellAll(String mId) throws Exception {
		CartDao.delAll(mId);
	}

	@Override
	public void update(int ctidx) throws Exception{
	}

	@Override
	public int sum(int midx) throws Exception{
		return CartDao.sum(midx);
	}

	@Override
	public int count(String mId, int pidx) throws Exception{
		return 0;
	}

	@Override
	public void updateCart(CartVO cvo) throws Exception{
	}

	@Override
	public void modifyCart(CartVO cvo) throws Exception{
		CartDao.modifyCart(cvo);
	}

	@Override
	public List<CartVO> list(int midx) throws Exception {
		return CartDao.list(midx);
	}


	
}

	
