package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.QaVO;

@Repository
public class QaDAO {

	@Autowired
	private SqlSession sqlSession; 
	
	private static final String Namespace = "edu.study.mapper.QaMapper";

	public void insert(QaVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert",vo);
	}
	
	public List<QaVO> pqlist(int midx) throws Exception{
		
		return sqlSession.selectList(Namespace+".pqlist",midx);
	}
	
	public List<QaVO> productList(int pidx) throws Exception{
		
		return sqlSession.selectList(Namespace+".productList",pidx);
	}
	
	public QaVO detail(int pqdix) throws Exception{
		
		return sqlSession.selectOne(Namespace+".detail",pqdix);
	}
}
