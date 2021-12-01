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
	public List<ProductVO> menList(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlist(pvo,cri);
	}
	
	@Override
	public int countmenlist() throws Exception {
		return GenderDao.countmenlist();
	}
	
	@Override
	public List<ProductVO> menListBoots(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistboots(pvo,cri);
	}
	
	@Override
	public int countmenboots() throws Exception {
		return GenderDao.countmenboots();
	}
	
	@Override
	public List<ProductVO> menListCasual(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistcasual(pvo,cri);
	}
	
	@Override
	public int countmencasual() throws Exception {
		return GenderDao.countmencasual();
	}
	
	@Override
	public List<ProductVO> menListDressShoes(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistdressshoes(pvo,cri);
	}
	
	@Override
	public int countmendressshoes() throws Exception {
		return GenderDao.countmendressshoes();
	}
	
	@Override
	public List<ProductVO> menListSandle(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistsandle(pvo,cri);
	}
	
	@Override
	public int countmensandle() throws Exception {
		return GenderDao.countmensandle();
	}
	
	@Override
	public List<ProductVO> menListSneakers(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistsneakers(pvo,cri);
	}
	
	@Override
	public int countmensneakers() throws Exception {
		return GenderDao.countmensneakers();
	}
	
	@Override
	public List<ProductVO> menListSports(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.menlistsports(pvo,cri);
	}
	
	@Override
	public int countmensports() throws Exception {
		return GenderDao.countmensports();
	}
	
	@Override
	public List<ProductVO> womenList(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlist(pvo,cri);
	}
	
	@Override
	public int countwomenlist() throws Exception {
		return GenderDao.countwomenlist();
	}

	@Override
	public List<ProductVO> womenListBoots(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistboots(pvo,cri);
	}
	
	@Override
	public int countwomenboots() throws Exception {
		return GenderDao.countwomenboots();
	}
	
	@Override
	public List<ProductVO> womenListCasual(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistcasual(pvo,cri);
	}
	
	@Override
	public int countwomencasual() throws Exception {
		return GenderDao.countwomencasual();
	}

	@Override
	public List<ProductVO> womenListDressShoes(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistdressshoes(pvo,cri);
	}
	
	@Override
	public int countwomendressshoes() throws Exception {
		return GenderDao.countwomendressshoes();
	}

	@Override
	public List<ProductVO> womenListSandle(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistsandle(pvo,cri);
	}
	
	@Override
	public int countwomensandle() throws Exception {
		return GenderDao.countwomensandle();
	}

	@Override
	public List<ProductVO> womenListSneakers(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistsneakers(pvo,cri);
	}
	
	@Override
	public int countwomensneakers() throws Exception {
		return GenderDao.countwomensneakers();
	}

	@Override
	public List<ProductVO> womenListSports(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.womenlistsports(pvo,cri);
	}
	
	@Override
	public int countwomensports() throws Exception {
		return GenderDao.countwomensports();
	}

	@Override
	public List<ProductVO> kidsList(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslist(pvo,cri);
	}
	
	@Override
	public int countkidslist() throws Exception {
		return GenderDao.countkidslist();
	}
	
	@Override
	public List<ProductVO> kidsListBoots(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistboots(pvo,cri);
	}
	
	@Override
	public int countkidsboots() throws Exception {
		return GenderDao.countkidsboots();
	}
	
	@Override
	public List<ProductVO> kidsListCasual(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistcasual(pvo,cri);
	}
	
	@Override
	public int countkidscasual() throws Exception {
		return GenderDao.countkidscasual();
	}
	
	@Override
	public List<ProductVO> kidsListDressShoes(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistdressshoes(pvo,cri);
	}
	
	@Override
	public int countkidsdressshoes() throws Exception {
		return GenderDao.countkidsdressshoes();
	}
	
	@Override
	public List<ProductVO> kidsListSandle(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistsandle(pvo,cri);
	}
	
	@Override
	public int countkidssandle() throws Exception {
		return GenderDao.countkidssandle();
	}
	
	@Override
	public List<ProductVO> kidsListSneakers(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistsneakers(pvo,cri);
	}
	
	@Override
	public int countkidssneakers() throws Exception {
		return GenderDao.countkidssneakers();
	}
	
	@Override
	public List<ProductVO> kidsListSports(ProductVO pvo,Criteria cri) throws Exception {
		return GenderDao.kidslistsports(pvo,cri);
	}
	
	@Override
	public int countkidssports() throws Exception {
		return GenderDao.countkidssports();
	}

	
}
