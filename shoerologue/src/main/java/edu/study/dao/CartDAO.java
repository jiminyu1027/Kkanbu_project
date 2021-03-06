package edu.study.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.WishListVO;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.CartMapper";	
	
	public void insert(CartVO cvo) {
		sqlSession.insert(Namespace+".insert", cvo);
	}
	
	public List<CartVO> order(CartVO cvo) throws Exception{
		return sqlSession.selectList(Namespace+".order", cvo);
	}
	
	public List<CartVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".list",midx);
	}
	//장바구니 개별삭제
	public void del(int ctidx) throws Exception{
		sqlSession.delete(Namespace+".del", ctidx);
	}
	//장바구니 전체 삭제
	public void delAll(int midx) throws Exception{
		sqlSession.update(Namespace+".delAll", midx);
	}
	
	public void update(CartVO cvo) throws Exception{
		sqlSession.update(Namespace+".update", cvo);
	}
	
	public int sum(int midx) throws Exception{
		//System.out.println("midx"+midx);
		return sqlSession.selectOne(Namespace+".sum", midx);
	}
	
	public int sumMoney(int midx)throws Exception{
		return sqlSession.selectOne(Namespace+".sumMoney",midx);
	}
	
	public void cartInsert(WishListVO wvo) throws Exception{
		sqlSession.insert(Namespace+".cartInsert", wvo);
	}
	
	public WishListVO wish(int widx) throws Exception{
		return sqlSession.selectOne(Namespace+".wish", widx);
	}
	public int check(int pidx, int midx)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pidx", pidx);
		map.put("midx",midx);
		return sqlSession.selectOne(Namespace+".check",map);
	}
	
}
