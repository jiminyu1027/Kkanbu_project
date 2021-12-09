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
	public void delAll(int midx) throws Exception {
		CartDao.delAll(midx);

	}

	@Override
	public void update(CartVO cvo) throws Exception{
		CartDao.update(cvo);
	}

	@Override
	public int sum(int midx) throws Exception{
		//System.out.println("midxxxx"+midx);
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

	@Override
	public int sumMoney(int midx) throws Exception {
		return CartDao.sumMoney(midx);
	}


	@Override
	public void del(int ctidx) throws Exception {
		CartDao.del(ctidx);
		
	}

	@Override
	public CartVO listOne(int ctidx) throws Exception {
		//System.out.println("ctidxxxxxxxx"+ctidx);
		return CartDao.listOne(ctidx);
	}

	
}

	
