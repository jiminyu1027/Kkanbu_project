package edu.study.service;

import java.util.List;

import edu.study.vo.ProductVO;


public interface GenderService {

	List<ProductVO> menList() throws Exception;
	
	List<ProductVO> womenList() throws Exception;
	
	List<ProductVO> kidsList() throws Exception;
	List<ProductVO> kidsListBoots() throws Exception;
	List<ProductVO> kidsListCasual() throws Exception;
	List<ProductVO> kidsListDressShoes() throws Exception;
	List<ProductVO> kidsListSandle() throws Exception;
	List<ProductVO> kidsListSneakers() throws Exception;
	List<ProductVO> kidsListSports() throws Exception;
}
