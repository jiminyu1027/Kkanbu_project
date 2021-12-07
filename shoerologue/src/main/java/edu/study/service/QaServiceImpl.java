package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.QaDAO;
import edu.study.vo.QaVO;

@Service
public class QaServiceImpl implements QaService {

	@Autowired
	QaDAO QaDao;
	
	@Override
	public void insert(QaVO vo) throws Exception{
		QaDao.insert(vo);
	}
	
	@Override
	public List<QaVO> pqlist() throws Exception{
		
		return QaDao.pqlist(); 
	}
	
	@Override
	public QaVO detail(int pqidx) throws Exception{
		
		return QaDao.detail(pqidx);
	}
}
