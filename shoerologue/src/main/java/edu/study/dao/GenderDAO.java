package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.ProductVO;

@Repository
public class GenderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.ProductMapper";	
	
		
		public List<ProductVO> menlist() throws Exception{	
			return sqlSession.selectList(Namespace+".menlist");
		}
		
		public List<ProductVO> womenlist() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlist");
		}
		
		
		
		public List<ProductVO> kidslist() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslist");
		}
		public List<ProductVO> kidslistboots() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistboots");
		}
		public List<ProductVO> kidslistcasual() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistcasual");
		}
		public List<ProductVO> kidslistdressshoes() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistdressshoes");
		}
		public List<ProductVO> kidslistsandle() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsandle");
		}
		public List<ProductVO> kidslistsneakers() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsneakers");
		}
		public List<ProductVO> kidslistsports() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsports");
		}
		
		
		
		
		
}
