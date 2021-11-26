package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;


public interface GenderService {

	List<ProductVO> menList() throws Exception;
	List<ProductVO> menListBoots() throws Exception;
	List<ProductVO> menListCasual() throws Exception;
	List<ProductVO> menListDressShoes() throws Exception;
	List<ProductVO> menListSandle() throws Exception;
	List<ProductVO> menListSneakers() throws Exception;
	List<ProductVO> menListSports() throws Exception;
	
	List<ProductVO> womenList() throws Exception;
	List<ProductVO> womenListBoots() throws Exception;
	List<ProductVO> womenListCasual() throws Exception;
	List<ProductVO> womenListDressShoes() throws Exception;
	List<ProductVO> womenListSandle() throws Exception;
	List<ProductVO> womenListSneakers() throws Exception;
	List<ProductVO> womenListSports() throws Exception;
	
	List<ProductVO> kidsList() throws Exception;
	List<ProductVO> kidsListBoots() throws Exception;
	List<ProductVO> kidsListCasual() throws Exception;
	List<ProductVO> kidsListDressShoes() throws Exception;
	List<ProductVO> kidsListSandle() throws Exception;
	List<ProductVO> kidsListSneakers() throws Exception;
	List<ProductVO> kidsListSports() throws Exception;
}
