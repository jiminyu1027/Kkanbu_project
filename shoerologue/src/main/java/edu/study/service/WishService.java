package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria3;
import edu.study.vo.ProductVO;
import edu.study.vo.WishListVO;


public interface WishService {

	List<WishListVO> wlist(int midx) throws Exception;
	public void del(int widx) throws Exception;
	List<WishListVO> wishlist(int midx,Criteria3 cri3) throws Exception;
	public int countwlist()throws Exception;
}
