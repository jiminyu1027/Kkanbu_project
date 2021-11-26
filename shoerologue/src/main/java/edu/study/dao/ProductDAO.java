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
		
		
		
		
}
