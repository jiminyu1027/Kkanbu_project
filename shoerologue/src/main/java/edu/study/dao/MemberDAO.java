package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.BoardUseMyBatisVO;
import edu.study.vo.SampleVO;
import edu.study.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.MemberMapper";	
		
//		public List<TestMemberVO> login(TestMemberVO vo) {
//			
//			return sqlSession.selectList(Namespace+".list", vo);
//		}
	
		public void insert(MemberVO vo) throws Exception{
			sqlSession.insert(Namespace+".insert", vo);
		}
		
		public MemberVO login(MemberVO vo) throws Exception{
			return sqlSession.selectOne(Namespace+".login", vo);
		}

		
}