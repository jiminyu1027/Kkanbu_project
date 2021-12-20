package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria3;
import edu.study.vo.ProductVO;
import edu.study.vo.WishListVO;

@Repository
public class WishDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.WishListMapper";	
	
	public List<WishListVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".wlist",midx);
	}
	public void del(int widx) throws Exception{
		sqlSession.delete(Namespace+".del", widx);
	}
	
	public List<WishListVO> wishlist(int midx, Criteria3 cri3) throws Exception{
		//System.out.println("CRIIIII"+wvo);
		return sqlSession.selectList(Namespace+".wishlist",midx);
	}
	
	public int countwlist() throws Exception{	
		return sqlSession.selectOne(Namespace+".countwlist");
	}
	
}
