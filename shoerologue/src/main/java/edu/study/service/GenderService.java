package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;


public interface GenderService {
	// 페이징 처리 게시글 조회
	List<ProductVO> menList(ProductVO pvo,Criteria cri) throws Exception;
	// 게시물 총 갯수
	public int countmenlist()throws Exception;
	List<ProductVO> menListBoots(ProductVO pvo,Criteria cri) throws Exception;
	public int countmenboots()throws Exception;
	List<ProductVO> menListCasual(ProductVO pvo,Criteria cri) throws Exception;
	public int countmencasual()throws Exception;
	List<ProductVO> menListDressShoes(ProductVO pvo,Criteria cri) throws Exception;
	public int countmendressshoes()throws Exception;
	List<ProductVO> menListSandle(ProductVO pvo,Criteria cri) throws Exception;
	public int countmensandle()throws Exception;
	List<ProductVO> menListSneakers(ProductVO pvo,Criteria cri) throws Exception;
	public int countmensneakers()throws Exception;
	List<ProductVO> menListSports(ProductVO pvo,Criteria cri) throws Exception;
	public int countmensports()throws Exception;
	List<ProductVO> womenList(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomenlist()throws Exception;
	List<ProductVO> womenListBoots(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomenboots()throws Exception;
	List<ProductVO> womenListCasual(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomencasual()throws Exception;
	List<ProductVO> womenListDressShoes(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomendressshoes()throws Exception;
	List<ProductVO> womenListSandle(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomensandle()throws Exception;
	List<ProductVO> womenListSneakers(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomensneakers()throws Exception;
	List<ProductVO> womenListSports(ProductVO pvo,Criteria cri) throws Exception;
	public int countwomensports()throws Exception;
	List<ProductVO> kidsList(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidslist()throws Exception;
	List<ProductVO> kidsListBoots(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidsboots()throws Exception;
	List<ProductVO> kidsListCasual(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidscasual()throws Exception;
	List<ProductVO> kidsListDressShoes(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidsdressshoes()throws Exception;
	List<ProductVO> kidsListSandle(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidssandle()throws Exception;
	List<ProductVO> kidsListSneakers(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidssneakers()throws Exception;
	List<ProductVO> kidsListSports(ProductVO pvo,Criteria cri) throws Exception;
	public int countkidssports()throws Exception;

}
