package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.MemberDAO;
import edu.study.dao.ProductDAO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDAO ProductDao;
	@Override
	public List<ProductVO> list() throws Exception {
		return ProductDao.list();
	}
	
	
	@Override
	public ProductVO detail(int pidx) throws Exception {
		return ProductDao.detail(pidx);
	}

}
