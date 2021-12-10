package edu.study.dao;

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
}
