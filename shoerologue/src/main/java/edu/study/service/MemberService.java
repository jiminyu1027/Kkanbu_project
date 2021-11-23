package edu.study.service;

import java.util.List;

import edu.study.vo.MemberVO;


public interface MemberService {
	//List<TestMemberVO> login(TestMemberVO vo) throws Exception;
	
	void insert(MemberVO vo) throws Exception;
	public MemberVO login (MemberVO vo) throws Exception;
	
}
