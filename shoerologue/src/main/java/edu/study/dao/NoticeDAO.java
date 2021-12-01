package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.NoticeVO;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.NoticeMapper";
	
	public void insert(NoticeVO vo)throws Exception{
		sqlSession.insert(Namespace+".insert", vo);
	}
	
	public List<NoticeVO> nlist() throws Exception{
		
		return sqlSession.selectList(Namespace+".nlist");
	}
	
	public NoticeVO detail(int nidx)throws Exception{
		
		return sqlSession.selectOne(Namespace+".detail", nidx);
	}
	
	public void delete(int nidx) throws Exception{
		
		sqlSession.delete(Namespace+".delete", nidx);
	}
}
