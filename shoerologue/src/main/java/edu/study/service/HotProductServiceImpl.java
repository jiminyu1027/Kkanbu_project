package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.HotProductDAO;
import edu.study.vo.HotProductVO;

@Service
public class HotProductServiceImpl implements HotProductService{
	
	@Autowired
	HotProductDAO HotProductDao;
	
	@Override
	public List<HotProductVO> hlist() throws Exception {
		return HotProductDao.hlist();
	}
	
	@Override
	public HotProductVO detail(int hidx) throws Exception {
		return HotProductDao.detail(hidx);
	}

}
