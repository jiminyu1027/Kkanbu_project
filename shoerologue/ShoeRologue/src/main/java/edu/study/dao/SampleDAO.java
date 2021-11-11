package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.SampleVO;

@Repository
public class SampleDAO {

	@Autowired
	SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.sampleMapper";		//중복되는 mapper 경로 상수로 선언
	
	public List<SampleVO> list() throws Exception{
		return sqlSession.selectList(Namespace+".list");
	}
	
	public void insert(SampleVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert", vo);
	}
	
	public SampleVO detail(int sidx) throws Exception{
		return sqlSession.selectOne(Namespace+".detail", sidx);
	}
	
	public void modify(SampleVO vo) throws Exception{
		sqlSession.update(Namespace+".modify", vo);
	}
	
	public int del(int sidx)throws Exception{
		return sqlSession.delete(Namespace+".del", sidx);
	}
	
}
