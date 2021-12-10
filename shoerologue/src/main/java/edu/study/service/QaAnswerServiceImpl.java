package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.QaAnswerDAO;
import edu.study.vo.QaAnswerVO;

@Service
public class QaAnswerServiceImpl implements QaAnswerService {

	@Autowired
	QaAnswerDAO QaAnswerDao;
	
	@Override
	public void insert(QaAnswerVO vo) throws Exception{
		
		QaAnswerDao.insert(vo);
	}
	
	@Override
	public List<QaAnswerVO> alist(int pqidx) throws Exception{
		
		return QaAnswerDao.alist(pqidx);
	}
}
