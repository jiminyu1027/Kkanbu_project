package edu.study.service;

import java.util.List;

import edu.study.vo.AddressVO;
import edu.study.vo.MemberVO;


public interface AddressService {

	List<AddressVO> list(int mIdx) throws Exception;
	
	public void insert(AddressVO vo) throws Exception;
	
	
}
