package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.AddressVO;
import edu.study.vo.MemberVO;

@Repository
public class AddressDAO {

	@Autowired
	SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.AddressMapper";	
	
	public List<AddressVO> list(int midx) throws Exception{
		return sqlSession.selectList(Namespace+".list", midx);
	}		

	public void insert(AddressVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert", vo);
	}	
	
//	public AddressVO detail(int midx) throws Exception{
//		return sqlSession.selectOne(Namespace+".detail",midx);
//	}
	
//	public void modify(AddressVO vo) throws Exception{
//		sqlSession.update(Namespace+".modify",vo);
//	}
	
	
	public void del(int midx) throws Exception{
		sqlSession.delete(Namespace+".del",midx);
	}
	
	
}
