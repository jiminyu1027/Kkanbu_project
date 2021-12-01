package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria;
import edu.study.vo.ProductVO;

@Repository
public class BrandDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.BrandMapper";	
	
		public List<ProductVO> nikelist(ProductVO pvo, Criteria cri) throws Exception{		
			return sqlSession.selectList(Namespace+".nikelist",cri);
		}
		
		public int countnike() throws Exception{	
			return sqlSession.selectOne(Namespace+".countnike");
		}
		
		public List<ProductVO> adidaslist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".adidaslist",cri);
		}
		
		public int countadidas() throws Exception{	
			return sqlSession.selectOne(Namespace+".countadidas");
		}
		
		public List<ProductVO> newbalancelist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".newbalancelist",cri);
		}
		
		public int countnewbalance() throws Exception{	
			return sqlSession.selectOne(Namespace+".countnewbalance");
		}
		
		public List<ProductVO> converselist(ProductVO pvo, Criteria cri) throws Exception{		
			return sqlSession.selectList(Namespace+".converselist",cri);
		}
		
		public int countconverse() throws Exception{	
			return sqlSession.selectOne(Namespace+".countconverse");
		}
		
		public List<ProductVO> vanslist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".vanslist",cri);
		}
		
		public int countvans() throws Exception{	
			return sqlSession.selectOne(Namespace+".countvans");
		}
		
		public List<ProductVO> reeboklist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".reeboklist",cri);
		}
		
		public int countreebok() throws Exception{	
			return sqlSession.selectOne(Namespace+".countreebok");
		}
		
		public List<ProductVO> nuovolist(ProductVO pvo, Criteria cri) throws Exception{		
			return sqlSession.selectList(Namespace+".nuovolist",cri);
		}
		
		public int countnuovo() throws Exception{	
			return sqlSession.selectOne(Namespace+".countnuovo");
		}
		
		public List<ProductVO> jordanlist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".jordanlist",cri);
		}
		
		public int countjordan() throws Exception{	
			return sqlSession.selectOne(Namespace+".countjordan");
		}
		
		public List<ProductVO> pumalist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".pumalist",cri);
		}
		
		public int countpuma() throws Exception{	
			return sqlSession.selectOne(Namespace+".countpuma");
		}
		
		public List<ProductVO> hawkinslist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".hawkinslist",cri);
		}
		
		public int counthawkins() throws Exception{	
			return sqlSession.selectOne(Namespace+".counthawkins");
		}
		
		public List<ProductVO> ggomoosinlist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".ggomoosinlist",cri);
		}
		
		public int countggomoosin() throws Exception{	
			return sqlSession.selectOne(Namespace+".countggomoosin");
		}
		
		public List<ProductVO> raragolist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".raragolist",cri);
		}
		
		public int countrarago() throws Exception{	
			return sqlSession.selectOne(Namespace+".countrarago");
		}
		
		public List<ProductVO> bearpawlist(ProductVO pvo, Criteria cri) throws Exception{	
			return sqlSession.selectList(Namespace+".bearpawlist",cri);
		}
		
		public int countbearpaw() throws Exception{	
			return sqlSession.selectOne(Namespace+".countbearpaw");
		}
		
		
		
		
}
