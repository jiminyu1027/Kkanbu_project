package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.AnswerVO;
import edu.study.vo.MemberVO;

@Repository
public class AnswerDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.AnswerMapper";
	
	public void insert(AnswerVO vo) throws Exception{
		sqlSession.insert(Namespace+".replyWrite",vo);
	}
	
	public List<AnswerVO> alist(int qidx) throws Exception{
		
		return sqlSession.selectList(Namespace+".alist",qidx);
	}
}
