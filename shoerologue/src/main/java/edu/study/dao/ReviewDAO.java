package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.ReviewVO;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.ReviewMapper";

	public void insert(ReviewVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert",vo);
	}
	
	public List<ReviewVO> prvlist(int pidx) throws Exception{
		
		return sqlSession.selectList(Namespace+".prvlist",pidx);
	}
	
	public List<ReviewVO> mylist(int midx) throws Exception{
		
		return sqlSession.selectList(Namespace+".mylist",midx);
	}
	
	public void updateDel(int rvidx) throws Exception{
		
		sqlSession.update(Namespace+".updateDel",rvidx);
	}
}
