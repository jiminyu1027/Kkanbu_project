package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria;
import edu.study.domain.Paging;
import edu.study.vo.ProductVO;


public interface GenderService {
	// 페이징 처리 게시글 조회
	List<ProductVO> menList(ProductVO pvo,Criteria cri) throws Exception;
	// 게시물 총 갯수
	public int countmenlist()throws Exception;

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
