package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;


public interface BrandService {

	List<ProductVO> nikeList(ProductVO pvo,Criteria cri) throws Exception;
	public int countnike()throws Exception;
	List<ProductVO> adidasList(ProductVO pvo,Criteria cri) throws Exception;
	public int countadidas()throws Exception;
	List<ProductVO> newbalanceList(ProductVO pvo,Criteria cri) throws Exception;
	public int countnewbalance()throws Exception;
	List<ProductVO> converseList(ProductVO pvo,Criteria cri) throws Exception;
	public int countconverse()throws Exception;
	List<ProductVO> vansList(ProductVO pvo,Criteria cri) throws Exception;
	public int countvans()throws Exception;
	List<ProductVO> reebokList(ProductVO pvo,Criteria cri) throws Exception;
	public int countreebok()throws Exception;
	List<ProductVO> nuovoList(ProductVO pvo,Criteria cri) throws Exception;
	public int countnuovo()throws Exception;
	List<ProductVO> jordanList(ProductVO pvo,Criteria cri) throws Exception;
	public int countjordan()throws Exception;
	List<ProductVO> pumaList(ProductVO pvo,Criteria cri) throws Exception;
	public int countpuma()throws Exception;
	List<ProductVO> hawkinsList(ProductVO pvo,Criteria cri) throws Exception;
	public int counthawkins()throws Exception;
	List<ProductVO> ggomoosinList(ProductVO pvo,Criteria cri) throws Exception;
	public int countggomoosin()throws Exception;
	List<ProductVO> raragoList(ProductVO pvo,Criteria cri) throws Exception;
	public int countrarago()throws Exception;
	List<ProductVO> bearpawList(ProductVO pvo,Criteria cri) throws Exception;
	public int countbearpaw()throws Exception;
	
}
