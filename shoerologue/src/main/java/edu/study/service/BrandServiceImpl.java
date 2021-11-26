package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.BrandDAO;
import edu.study.vo.ProductVO;

@Service
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	BrandDAO BrandDao;
	

	@Override
	public List<ProductVO> nikeList() throws Exception {
		return BrandDao.nikelist();
	}
	
	@Override
	public List<ProductVO> adidasList() throws Exception {
		return BrandDao.adidaslist();
	}
	
	@Override
	public List<ProductVO> newbalanceList() throws Exception {
		return BrandDao.newbalancelist();
	}
	
	@Override
	public List<ProductVO> converseList() throws Exception {
		return BrandDao.converselist();
	}
	
	@Override
	public List<ProductVO> vansList() throws Exception {
		return BrandDao.vanslist();
	}
	
	@Override
	public List<ProductVO> reebokList() throws Exception {
		return BrandDao.reeboklist();
	}
	
	@Override
	public List<ProductVO> nuovoList() throws Exception {
		return BrandDao.nuovolist();
	}

	@Override
	public List<ProductVO> jordanList() throws Exception {
		return BrandDao.jordanlist();
	}

	@Override
	public List<ProductVO> pumaList() throws Exception {
		return BrandDao.pumalist();
	}

	@Override
	public List<ProductVO> hawkinsList() throws Exception {
		return BrandDao.hawkinslist();
	}

	@Override
	public List<ProductVO> ggomoosinList() throws Exception {
		return BrandDao.ggomoosinlist();
	}

	@Override
	public List<ProductVO> raragoList() throws Exception {
		return BrandDao.raragolist();
	}

	@Override
	public List<ProductVO> bearpawList() throws Exception {
		return BrandDao.bearpawlist();
	}


	
	

}
