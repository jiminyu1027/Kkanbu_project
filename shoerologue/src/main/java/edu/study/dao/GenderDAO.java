package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria;
import edu.study.domain.Paging;
import edu.study.vo.ProductVO;

@Repository
public class GenderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.GenderMapper";	
	
		
		public List<ProductVO> menlist(ProductVO pvo, Criteria cri) throws Exception{	
			
			return sqlSession.selectList(Namespace+".menlist",cri);
		}
		
		public int countmenlist() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmenlist");
		}
		
		
		
		
		public List<ProductVO> menlistboots() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistboots");
		}
		public List<ProductVO> menlistcasual() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistcasual");
		}
		public List<ProductVO> menlistdressshoes() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistdressshoes");
		}
		public List<ProductVO> menlistsandle() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsandle");
		}
		public List<ProductVO> menlistsneakers() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsneakers");
		}
		public List<ProductVO> menlistsports() throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsports");
		}
		
		
		public List<ProductVO> womenlist() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlist");
		}
		public List<ProductVO> womenlistboots() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistboots");
		}
		public List<ProductVO> womenlistcasual() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistcasual");
		}
		public List<ProductVO> womenlistdressshoes() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistdressshoes");
		}
		public List<ProductVO> womenlistsandle() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsandle");
		}
		public List<ProductVO> womenlistsneakers() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsneakers");
		}
		public List<ProductVO> womenlistsports() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsports");
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
