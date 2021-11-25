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
	public List<CartVO> list(int midx) throws Exception {
		return CartDao.list(midx);
	}

	@Override
	public void del(CartVO cvo) throws Exception {
		CartDao.del(cvo);
	}


	
}
