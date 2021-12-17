package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria2;
import edu.study.vo.CartVO;
import edu.study.vo.ProductVO;


public interface ProductService {

	List<ProductVO> list() throws Exception;
	ProductVO detail(int pidx) throws Exception;
	public void insert(ProductVO pvo) throws Exception;
	public void wishInsert(ProductVO pvo) throws Exception;
	public void productInsert(ProductVO pvo) throws Exception;
	List<ProductVO> pdAllList(ProductVO pvo,Criteria2 cri) throws Exception;
	public int countAllList()throws Exception;
	public void delProduct(ProductVO pvo) throws Exception;
	ProductVO detail2(int pidx) throws Exception;
	public void productModify(ProductVO pvo) throws Exception;
	ProductVO order(CartVO cvo) throws Exception;
}
