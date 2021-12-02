package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.AnswerDAO;
import edu.study.vo.AnswerVO;

@Service
public class AnswerServiceImpl implements AnswerService {

	@Autowired
	AnswerDAO AnswerDao;
	
	@Override
	public void insert(AnswerVO vo) throws Exception{
		
		AnswerDao.insert(vo);
	}
	
	@Override
	public List<AnswerVO> alist(int qidx) throws Exception{
		
		return AnswerDao.alist(qidx);
	}
}
