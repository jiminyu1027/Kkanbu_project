package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.CartMapper";	
	
	public List<CartVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".list", midx);
	}
	
	public void del(CartVO cvo) throws Exception{
		sqlSession.delete(Namespace+".del", cvo);
	}
	
}
