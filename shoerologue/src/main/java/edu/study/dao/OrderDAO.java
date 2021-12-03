package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.OrderVO;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.OrderMapper";	
	
	
	public List<OrderVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".list",midx);
	}
}
