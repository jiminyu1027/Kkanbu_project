package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.InquiryVO;

@Repository
public class InquiryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.InquiryMapper";
	
	public void insert(InquiryVO vo) throws Exception{
		sqlSession.insert(Namespace+".insert",vo);
	}
	
	public List<InquiryVO> qlist(int midx) throws Exception{
		
		return sqlSession.selectList(Namespace+".qlist",midx);
		
//		MIDX�� �ش��ϴ� ����� �� ����� �����ֱ� ���� INT MIDX�� �����Ѵ�.
	}
	
	public List<InquiryVO> masterList() throws Exception{
		
		return sqlSession.selectList(Namespace+".masterList");
	}
	
	public InquiryVO detail(int qidx) throws Exception{
		
		return sqlSession.selectOne(Namespace+".detail",qidx);
	}
	
	public void delete(int qidx) throws Exception{
		
		sqlSession.delete(Namespace+".delete",qidx);
	}
}
