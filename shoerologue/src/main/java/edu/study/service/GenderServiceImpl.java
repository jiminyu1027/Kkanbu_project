package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.GenderDAO;
import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;

@Service
public class GenderServiceImpl implements GenderService{
	
	@Autowired
	GenderDAO GenderDao;
	
	@Override
	public List<ProductVO> menList() throws Exception {
		return GenderDao.menlist();
	}

	@Override
	public List<ProductVO> menListBoots() throws Exception {
		return GenderDao.menlistboots();
	}

	@Override
	public List<ProductVO> menListCasual() throws Exception {
		return GenderDao.menlistcasual();
	}

	@Override
	public List<ProductVO> menListDressShoes() throws Exception {
		return GenderDao.menlistdressshoes();
	}

	@Override
	public List<ProductVO> menListSandle() throws Exception {
		return GenderDao.menlistsandle();
	}

	@Override
	public List<ProductVO> menListSneakers() throws Exception {
		return GenderDao.menlistsneakers();
	}

	@Override
	public List<ProductVO> menListSports() throws Exception {
		return GenderDao.menlistsports();
	}
	
	
	@Override
	public List<ProductVO> womenList() throws Exception {
		return GenderDao.womenlist();
	}

	@Override
	public List<ProductVO> womenListBoots() throws Exception {
		return GenderDao.womenlistboots();
	}

	@Override
	public List<ProductVO> womenListCasual() throws Exception {
		return GenderDao.womenlistcasual();
	}

	@Override
	public List<ProductVO> womenListDressShoes() throws Exception {
		return GenderDao.womenlistdressshoes();
	}

	@Override
	public List<ProductVO> womenListSandle() throws Exception {
		return GenderDao.womenlistsandle();
	}

	@Override
	public List<ProductVO> womenListSneakers() throws Exception {
		return GenderDao.womenlistsneakers();
	}

	@Override
	public List<ProductVO> womenListSports() throws Exception {
		return GenderDao.womenlistsports();
	}

	
	@Override
	public List<ProductVO> kidsList() throws Exception {
		return GenderDao.kidslist();
	}


	
	@Override
	public List<ProductVO> kidsListBoots() throws Exception {
		return GenderDao.kidslistboots();
	}

	@Override
	public List<ProductVO> kidsListCasual() throws Exception {
		return GenderDao.kidslistcasual();
	}

	@Override
	public List<ProductVO> kidsListDressShoes() throws Exception {
		return GenderDao.kidslistdressshoes();
	}

	@Override
	public List<ProductVO> kidsListSandle() throws Exception {
		return GenderDao.kidslistsandle();
	}

	@Override
	public List<ProductVO> kidsListSneakers() throws Exception {
		return GenderDao.kidslistsneakers();
	}

	@Override
	public List<ProductVO> kidsListSports() throws Exception {
		return GenderDao.kidslistsports();
	}

	
}
