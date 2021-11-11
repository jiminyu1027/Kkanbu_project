package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.BoardUseMyBatisVO;

@Repository
public class BoardUseMybatisDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardUseMyBatisVO> list() throws Exception{
		
		return sqlSession.selectList("edu.study.mapper.boardUseMybatisMapper.listBoard") ;
	}
}
