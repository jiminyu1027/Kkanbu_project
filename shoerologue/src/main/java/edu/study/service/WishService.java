package edu.study.service;

import java.util.List;

import edu.study.vo.WishListVO;


public interface WishService {

	List<WishListVO> wlist(int midx) throws Exception;
	public void del(int widx) throws Exception;
	List<WishListVO> wishlist(int midx) throws Exception;
}
