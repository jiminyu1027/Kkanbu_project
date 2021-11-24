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
	
	public List<AddressVO> list(int mIdx) throws Exception{
		return sqlSession.selectList(Namespace+".list", mIdx);
	}		

	public void insert(AddressVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert", vo);
	}	
		
	
	
}
