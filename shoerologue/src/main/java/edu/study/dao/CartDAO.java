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
	
	public List<CartVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".list",midx);
	}
	//��ٱ��� ��������
	public void del(int ctidx) throws Exception{
		sqlSession.delete(Namespace+".del", ctidx);
	}
	//��ٱ��� ��ü ����
	public void delAll(String mId) throws Exception{
		sqlSession.delete(Namespace+".dellAll", mId);
	}
	
	public void update(int ctidx) throws Exception{
	}
	
	//��ٱ��� �ݾ��հ�
	public int sum(int midx) {
		return sqlSession.selectOne(Namespace+".sum",midx);
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
