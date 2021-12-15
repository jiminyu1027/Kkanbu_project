package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.ProductDAO;
import edu.study.domain.Criteria;
import edu.study.domain.Criteria2;
import edu.study.vo.CartVO;
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

	@Override
	public void insert(ProductVO pvo) throws Exception {
		ProductDao.insert(pvo);
		
	}

	@Override
	public void productInsert(ProductVO pvo) throws Exception {
		ProductDao.productInsert(pvo);
	}

	@Override
	public List<ProductVO> pdAllList(ProductVO pvo,Criteria2 cri) throws Exception {
		return ProductDao.pdAllList(pvo,cri);
	}

	@Override
	public int countAllList() throws Exception {
		return ProductDao.countAllList();
	}

	@Override
	public void delProduct(ProductVO pvo) throws Exception {
		ProductDao.delProduct(pvo);
	}
	
	@Override
	public ProductVO detail2(int pidx) throws Exception {
		return ProductDao.detail2(pidx);
	}
	
	@Override 
	public void productModify(ProductVO pvo) throws Exception {
		ProductDao.productModify(pvo); 
	}

	@Override
	public ProductVO order(CartVO cvo) throws Exception {
		return ProductDao.order(cvo);
	}


	
}
