package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.domain.Criteria;
import edu.study.domain.Criteria2;
import edu.study.vo.ProductVO;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.ProductMapper";	
	
		public List<ProductVO> list() throws Exception{
			return sqlSession.selectList(Namespace+".list");
		}

		public ProductVO detail(int pidx) throws Exception{
			ProductVO pt  = sqlSession.selectOne(Namespace+".detail", pidx);
			String g = pt.getpGender();
			System.out.println("g"+g);
			return  pt;
		}

		public ProductVO price(int pidx) throws Exception{
			return (ProductVO) sqlSession.selectList(Namespace+".productsize", pidx);
			
		}
		
		public void insert(ProductVO pvo) throws Exception{
			sqlSession.insert(Namespace+".insert", pvo);
		}
		
		public void productInsert(ProductVO pvo) throws Exception{
			sqlSession.insert(Namespace+".productInsert", pvo);
		}
		
		public List<ProductVO> pdAllList(ProductVO pvo, Criteria2 cri) throws Exception{
			return sqlSession.selectList(Namespace+".pdAllList",cri);
		}
		public int countAllList() throws Exception{	
			return sqlSession.selectOne(Namespace+".countAllList");
		}
}
