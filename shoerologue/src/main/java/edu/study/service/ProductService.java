package edu.study.service;

import java.util.List;

import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;


public interface ProductService {

		List<ProductVO> list() throws Exception;

		ProductVO detail(int pidx) throws Exception;
	
}
