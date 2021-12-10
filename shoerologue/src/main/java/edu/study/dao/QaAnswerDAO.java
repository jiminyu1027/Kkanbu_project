package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.QaAnswerVO;

@Repository
public class QaAnswerDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.QaAnswerMapper";

	public void insert(QaAnswerVO vo) throws Exception{
		sqlSession.insert(Namespace+".replyWrite",vo);
	}
	
	public List<QaAnswerVO> alist(int pqidx) throws Exception{
		
		return sqlSession.selectList(Namespace+".alist",pqidx);
	}
}
