package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.MemberDAO;
import edu.study.domain.Criteria;
import edu.study.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO MemberDao;

//	@Override
//	public List<TestMemberVO> login(TestMemberVO vo) throws Exception {
//		
//		return TestMemberDao.login(vo);
//	}

	@Override
	public void insert(MemberVO vo) throws Exception {
		MemberDao.insert(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return MemberDao.login(vo);
	}

	@Override
	public void del(MemberVO vo) throws Exception {
		MemberDao.del(vo);
	}

	@Override
	public MemberVO member(int midx) throws Exception {
		return MemberDao.member(midx);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		MemberDao.update(vo);
	}

	@Override
	public MemberVO findID(MemberVO vo) throws Exception {
		return MemberDao.findId(vo);
	}

	@Override
	public MemberVO findPwd(MemberVO vo) throws Exception {
		return MemberDao.findPwd(vo);
	}

	@Override
	public int idCheck(MemberVO vo) throws Exception {
		int result = MemberDao.idCheck(vo);
		return result;
	}

	@Override
	public List<MemberVO> list(MemberVO mvo, Criteria cri) throws Exception {
		return MemberDao.list(mvo, cri);
	}

	@Override
	public int countMemberList() throws Exception {
		return MemberDao.countMemberList();
	}

	
	
	
}
