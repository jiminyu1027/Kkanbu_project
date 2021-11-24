package edu.study.service;

import java.util.List;

import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;


public interface ProductService {

	List<ProductVO> list() throws Exception;

	ProductVO detail(int pidx) throws Exception;

	List<ProductVO> nikeList() throws Exception;
	
	List<ProductVO> adidasList() throws Exception;
	
	List<ProductVO> newbalanceList() throws Exception;
	
	List<ProductVO> converseList() throws Exception;
	
	List<ProductVO> vansList() throws Exception;
	
	List<ProductVO> reebokList() throws Exception;
	
	List<ProductVO> nuovoList() throws Exception;
	
	List<ProductVO> jordanList() throws Exception;
	
	List<ProductVO> pumaList() throws Exception;
	
	List<ProductVO> hawkinsList() throws Exception;
	
	List<ProductVO> ggomoosinList() throws Exception;
	
	List<ProductVO> raragoList() throws Exception;
	
	List<ProductVO> bearpawList() throws Exception;
	
	


	List<ProductVO> menList() throws Exception;
	
	List<ProductVO> womenList() throws Exception;
	
	List<ProductVO> kidsList() throws Exception;
}
