package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.ProductDAO;
import edu.study.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDAO ProductDao;
	
	
	@Override
	public List<ProductVO> list() throws Exception {
		return ProductDao.list();
	}
	
	@Override
	public ProductVO detail(int pidx) throws Exception {
		return ProductDao.detail(pidx);
	}


	@Override
	public List<ProductVO> nikeList() throws Exception {
		return ProductDao.nikelist();
	}
	
	@Override
	public List<ProductVO> adidasList() throws Exception {
		return ProductDao.adidaslist();
	}
	
	@Override
	public List<ProductVO> newbalanceList() throws Exception {
		return ProductDao.newbalancelist();
	}
	
	@Override
	public List<ProductVO> converseList() throws Exception {
		return ProductDao.converselist();
	}
	
	@Override
	public List<ProductVO> vansList() throws Exception {
		return ProductDao.vanslist();
	}
	
	@Override
	public List<ProductVO> reebokList() throws Exception {
		return ProductDao.reeboklist();
	}
	
	@Override
	public List<ProductVO> nuovoList() throws Exception {
		return ProductDao.nuovolist();
	}

	@Override
	public List<ProductVO> jordanList() throws Exception {
		return ProductDao.jordanlist();
	}

	@Override
	public List<ProductVO> pumaList() throws Exception {
		return ProductDao.pumalist();
	}

	@Override
	public List<ProductVO> hawkinsList() throws Exception {
		return ProductDao.hawkinslist();
	}

	@Override
	public List<ProductVO> ggomoosinList() throws Exception {
		return ProductDao.ggomoosinlist();
	}

	@Override
	public List<ProductVO> raragoList() throws Exception {
		return ProductDao.raragolist();
	}

	@Override
	public List<ProductVO> bearpawList() throws Exception {
		return ProductDao.bearpawlist();
	}


	
	@Override
	public List<ProductVO> menList() throws Exception {
		return ProductDao.menlist();
	}

	@Override
	public List<ProductVO> womenList() throws Exception {
		return ProductDao.womenlist();
	}

	@Override
	public List<ProductVO> kidsList() throws Exception {
		return ProductDao.kidslist();
	}


}
