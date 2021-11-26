package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.GenderDAO;
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
	public List<ProductVO> womenList() throws Exception {
		return GenderDao.womenlist();
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
