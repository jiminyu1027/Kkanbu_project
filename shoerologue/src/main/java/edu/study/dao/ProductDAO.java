package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.ProductVO;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.ProductMapper";	
	
		public List<ProductVO> list() throws Exception{
			return sqlSession.selectList(Namespace+".list");
		}

		public ProductVO detail(int pidx) throws Exception  {
			ProductVO pt  = sqlSession.selectOne(Namespace+".detail", pidx);
			String g = pt.getpGender();
			System.out.println("g"+g);
			return  pt;
		}
		
		public List<ProductVO> nikelist() throws Exception{		
			return sqlSession.selectList(Namespace+".nikelist");
		}
		
		public List<ProductVO> adidaslist() throws Exception{	
			return sqlSession.selectList(Namespace+".adidaslist");
		}
		
		public List<ProductVO> newbalancelist() throws Exception{	
			return sqlSession.selectList(Namespace+".newbalancelist");
		}
		
		public List<ProductVO> converselist() throws Exception{		
			return sqlSession.selectList(Namespace+".converselist");
		}
		
		public List<ProductVO> vanslist() throws Exception{	
			return sqlSession.selectList(Namespace+".vanslist");
		}
		
		public List<ProductVO> reeboklist() throws Exception{	
			return sqlSession.selectList(Namespace+".reeboklist");
		}
		
		public List<ProductVO> nuovolist() throws Exception{		
			return sqlSession.selectList(Namespace+".nuovolist");
		}
		
		public List<ProductVO> jordanlist() throws Exception{	
			return sqlSession.selectList(Namespace+".jordanlist");
		}
		
		public List<ProductVO> pumalist() throws Exception{	
			return sqlSession.selectList(Namespace+".pumalist");
		}
		
		public List<ProductVO> hawkinslist() throws Exception{	
			return sqlSession.selectList(Namespace+".hawkinslist");
		}
		
		public List<ProductVO> ggomoosinlist() throws Exception{	
			return sqlSession.selectList(Namespace+".ggomoosinlist");
		}
		
		public List<ProductVO> raragolist() throws Exception{	
			return sqlSession.selectList(Namespace+".raragolist");
		}
		
		public List<ProductVO> bearpawlist() throws Exception{	
			return sqlSession.selectList(Namespace+".bearpawlist");
		}
		
		
		
		
		public List<ProductVO> menlist() throws Exception{	
			return sqlSession.selectList(Namespace+".menlist");
		}
		
		public List<ProductVO> womenlist() throws Exception{	
			return sqlSession.selectList(Namespace+".womenlist");
		}
		
		public List<ProductVO> kidslist() throws Exception{	
			return sqlSession.selectList(Namespace+".kidslist");
		}
		
		
		
}
