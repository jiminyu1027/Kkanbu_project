package edu.study.service;

import java.util.List;

import edu.study.domain.Criteria;
import edu.study.vo.MemberVO;


public interface MemberService {
	//List<TestMemberVO> login(TestMemberVO vo) throws Exception;
	
	void insert(MemberVO vo) throws Exception;
	public MemberVO login (MemberVO vo) throws Exception;
	public void del(MemberVO vo) throws Exception;
	public MemberVO member(int midx) throws Exception;
	public void update(MemberVO vo) throws Exception;
	public MemberVO findID(MemberVO vo) throws Exception;
	public MemberVO findPwd(MemberVO vo) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(MemberVO vo) throws Exception;
	
	List<MemberVO> list(MemberVO mvo,Criteria cri) throws Exception;
	public int countMemberList()throws Exception;
}
