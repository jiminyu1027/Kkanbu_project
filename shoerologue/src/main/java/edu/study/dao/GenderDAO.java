package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria;
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
		
		public List<ProductVO> menlistboots(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistboots",cri);
		}
		
		public int countmenboots() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmenboots");
		}
		
		public List<ProductVO> menlistcasual(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistcasual",cri);
		}
		
		public int countmencasual() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmencasual");
		}
		
		public List<ProductVO> menlistdressshoes(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistdressshoes",cri);
		}
		
		public int countmendressshoes() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmendressshoes");
		}	
		
		public List<ProductVO> menlistsandle(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsandle",cri);
		}
		
		public int countmensandle() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmensandle");
		}
		
		public List<ProductVO> menlistsneakers(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsneakers",cri);
		}
		
		public int countmensneakers() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmensneakers");
		}
		
		public List<ProductVO> menlistsports(ProductVO pvo,Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".menlistsports",cri);
		}
		
		public int countmensports() throws Exception{	
			return sqlSession.selectOne(Namespace+".countmensports");
		}
		
		public List<ProductVO> womenlist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlist",cri);
		}
		
		public int countwomenlist() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomenlist");
		}
		
		public List<ProductVO> womenlistboots(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistboots",cri);
		}
		
		public int countwomenboots() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomenboots");
		}
		
		public List<ProductVO> womenlistcasual(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistcasual",cri);
		}
		
		public int countwomencasual() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomencasual");
		}
		
		public List<ProductVO> womenlistdressshoes(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistdressshoes",cri);
		}
		
		public int countwomendressshoes() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomendressshoes");
		}
		
		public List<ProductVO> womenlistsandle(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsandle",cri);
		}
		
		public int countwomensandle() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomensandle");
		}
		
		public List<ProductVO> womenlistsneakers(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsneakers",cri);
		}
		
		public int countwomensneakers() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomensneakers");
		}
		
		public List<ProductVO> womenlistsports(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".womenlistsports",cri);
		}
		
		public int countwomensports() throws Exception{	
			return sqlSession.selectOne(Namespace+".countwomensports");
		}
		
		public List<ProductVO> kidslist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslist",cri);
		}
		
		public int countkidslist() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidslist");
		}

		public List<ProductVO> kidslistboots(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistboots",cri);
		}
		
		public int countkidsboots() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidsboots");
		}
		
		public List<ProductVO> kidslistcasual(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistcasual",cri);
		}
		
		public int countkidscasual() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidscasual");
		}
		
		public List<ProductVO> kidslistdressshoes(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistdressshoes",cri);
		}
		
		public int countkidsdressshoes() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidsdressshoes");
		}
		
		public List<ProductVO> kidslistsandle(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsandle",cri);			
		}
		
		public int countkidssandle() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidssandle");
		}
		
		public List<ProductVO> kidslistsneakers(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsneakers",cri);
		}
		
		public int countkidssneakers() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidssneakers");
		}
		
		public List<ProductVO> kidslistsports(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".kidslistsports",cri);
		}
		
		public int countkidssports() throws Exception{	
			return sqlSession.selectOne(Namespace+".countkidssports");
		}
		
}
