package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.CartDAO;
import edu.study.dao.OrderDAO;
import edu.study.vo.CartVO;
import edu.study.vo.OrderVO;
import edu.study.vo.ProductVO;


@Service
public class OrderServiceImple implements OrderService{
	
	@Autowired
	OrderDAO orderDao;

	@Override
	public List<OrderVO> list(int midx) throws Exception {
		return orderDao.list(midx);
	}

	
}

	
