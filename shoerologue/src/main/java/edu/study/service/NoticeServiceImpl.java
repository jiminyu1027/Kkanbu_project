package edu.study.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.NoticeDAO;
import edu.study.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDAO NoticeDao;
	
	@Override
	public void insert(NoticeVO vo)throws Exception{
		NoticeDao.insert(vo);
	}
	
	@Override
	public List<NoticeVO> nlist() throws Exception{
		
		return NoticeDao.nlist();
	}
	
	@Override
	public NoticeVO detail(int nidx) throws Exception{
		
		return NoticeDao.detail(nidx);
	}
	
	@Override
	public void delete(int nidx)throws Exception{
		
		NoticeDao.delete(nidx);
	}
}
