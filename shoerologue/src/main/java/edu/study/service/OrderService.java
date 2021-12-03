package edu.study.service;

import java.util.List;

import edu.study.vo.OrderVO;


public interface OrderService {

	List<OrderVO> list(int midx) throws Exception;

}
