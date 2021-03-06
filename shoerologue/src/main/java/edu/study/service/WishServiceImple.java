package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.WishDAO;
import edu.study.domain.Criteria2;
import edu.study.domain.Criteria3;
import edu.study.vo.WishListVO;


@Service
public class WishServiceImple implements WishService{
	
	@Autowired
	WishDAO wishDao;

	@Override
	public List<WishListVO> wlist(int midx) throws Exception {
		return wishDao.list(midx);
	}

	@Override
	public void del(int widx) throws Exception {
		wishDao.del(widx);
	}

	@Override
	public List<WishListVO> wishlist(int midx, Criteria3 cri) throws Exception {
		return wishDao.wishlist(midx, cri);
	}

	@Override
	public int countwlist(int midx) throws Exception {
		return wishDao.countwlist(midx);
	}

}

	
