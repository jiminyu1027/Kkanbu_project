package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria;
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

		public void del(MemberVO vo) throws Exception{
			sqlSession.delete(Namespace+".del",vo);
		}
		
		public MemberVO member(int midx) throws Exception{
			return sqlSession.selectOne(Namespace+".member",midx);
		}	
		
		public void update(MemberVO vo) throws Exception{
			sqlSession.update(Namespace+".update",vo);
		}
		
		public MemberVO findId(MemberVO vo) throws Exception{
			return sqlSession.selectOne(Namespace+".findId",vo);
		}
		
		public MemberVO findPwd(MemberVO vo) throws Exception{
			return sqlSession.selectOne(Namespace+".findPwd",vo);
		}
		
		public int idCheck(MemberVO vo) throws Exception{
			int result = sqlSession.selectOne(Namespace+".idCheck",vo);
			return result;
		}
		
		public List<MemberVO> list(MemberVO mvo, Criteria cri) {
			return sqlSession.selectList(Namespace+".list",cri);
		}
		public int countMemberList() throws Exception{	
			return sqlSession.selectOne(Namespace+".countMemberList");
		}
}
