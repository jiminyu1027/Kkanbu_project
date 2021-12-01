package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.BrandDAO;
import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;

@Service
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	BrandDAO BrandDao;
	

	@Override
	public List<ProductVO> nikeList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.nikelist(pvo,cri);
	}
	@Override
	public int countnike() throws Exception {
		return BrandDao.countnike();
	}
	@Override
	public List<ProductVO> adidasList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.adidaslist(pvo,cri);
	}
	@Override
	public int countadidas() throws Exception {
		return BrandDao.countadidas();
	}
	@Override
	public List<ProductVO> newbalanceList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.newbalancelist(pvo,cri);
	}
	@Override
	public int countnewbalance() throws Exception {
		return BrandDao.countnewbalance();
	}
	@Override
	public List<ProductVO> converseList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.converselist(pvo,cri);
	}
	@Override
	public int countconverse() throws Exception {
		return BrandDao.countconverse();
	}
	@Override
	public List<ProductVO> vansList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.vanslist(pvo,cri);
	}
	@Override
	public int countvans() throws Exception {
		return BrandDao.countvans();
	}
	@Override
	public List<ProductVO> reebokList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.reeboklist(pvo,cri);
	}
	@Override
	public int countreebok() throws Exception {
		return BrandDao.countreebok();
	}
	@Override
	public List<ProductVO> nuovoList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.nuovolist(pvo,cri);
	}
	@Override
	public int countnuovo() throws Exception {
		return BrandDao.countnuovo();
	}
	@Override
	public List<ProductVO> jordanList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.jordanlist(pvo,cri);
	}
	@Override
	public int countjordan() throws Exception {
		return BrandDao.countjordan();
	}
	@Override
	public List<ProductVO> pumaList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.pumalist(pvo,cri);
	}
	@Override
	public int countpuma() throws Exception {
		return BrandDao.countpuma();
	}
	@Override
	public List<ProductVO> hawkinsList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.hawkinslist(pvo,cri);
	}
	@Override
	public int counthawkins() throws Exception {
		return BrandDao.counthawkins();
	}
	@Override
	public List<ProductVO> ggomoosinList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.ggomoosinlist(pvo,cri);
	}
	@Override
	public int countggomoosin() throws Exception {
		return BrandDao.countggomoosin();
	}
	@Override
	public List<ProductVO> raragoList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.raragolist(pvo,cri);
	}
	@Override
	public int countrarago() throws Exception {
		return BrandDao.countrarago();
	}
	@Override
	public List<ProductVO> bearpawList(ProductVO pvo,Criteria cri) throws Exception {
		return BrandDao.bearpawlist(pvo,cri);
	}
	@Override
	public int countbearpaw() throws Exception {
		return BrandDao.countbearpaw();
	}

	
	

}
