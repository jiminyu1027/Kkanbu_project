package edu.study.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.AnswerVO;

@Repository
public class AnswerDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.AnswerMapper";
	
	public void insert(AnswerVO vo) throws Exception{
		sqlSession.insert(Namespace+".replyWrite",vo);
	}
}
