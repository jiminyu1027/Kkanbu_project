package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.HotProductVO;

@Repository
public class HotProductDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.HotProductMapper";	
	
			public List<HotProductVO> hlist() throws Exception{
				return sqlSession.selectList(Namespace+".hlist");
			}

	
			public HotProductVO detail(int hidx) throws Exception  {
				return sqlSession.selectOne(Namespace+".detail", hidx);
			}

		
}
