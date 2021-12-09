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
	
	public void insert(CartVO cvo) {
		sqlSession.insert(Namespace+".insert", cvo);
	}
	
	public CartVO listOne(int ctidx) throws Exception{
		//System.out.println("ctidx::::"+ctidx);
		return sqlSession.selectOne(Namespace+".listOne", ctidx);
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
	
	public int count(String mId, int pidx)throws Exception{
		return 0;
	}
	
	public void updateCart(CartVO cvo) throws Exception{
	}
	
	public void modifyCart(CartVO cvo) throws Exception{
		sqlSession.update(Namespace+".modify", cvo);
	}
}
