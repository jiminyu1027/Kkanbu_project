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
	public List<QaVO> pqlist(int midx) throws Exception{
		
		return QaDao.pqlist(midx); 
	}
	
	@Override
	public List<QaVO> masterList() throws Exception{
		
		return QaDao.masterList();
	}
	
	@Override
	public List<QaVO> productList(int pidx) throws Exception{
		
		return QaDao.productList(pidx);
	}
	
	@Override
	public QaVO detail(int pqidx) throws Exception{
		
		return QaDao.detail(pqidx);
	}
	
	@Override
	public void update(int pqidx) throws Exception{
		
		QaDao.update(pqidx);
	}
	
	@Override
	public void replyWrite(QaVO vo) throws Exception {

		QaDao.replyWrite(vo);
	}
}
