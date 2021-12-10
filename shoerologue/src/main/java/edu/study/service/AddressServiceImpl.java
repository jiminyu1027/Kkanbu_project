package edu.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.AddressDAO;
import edu.study.dao.MemberDAO;
import edu.study.vo.AddressVO;
import edu.study.vo.MemberVO;

@Service
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	AddressDAO addressDao;
	
	@Override
	public List<AddressVO> list(int mIdx) throws Exception {
		return addressDao.list(mIdx);
	}

	@Override
	public void insert(AddressVO vo) throws Exception {
		addressDao.insert(vo);
	}

	//@Override
	//public AddressVO detail(int midx) throws Exception {
	//	return addressDao.detail(midx);
	//}

	@Override
	public void update(AddressVO vo) throws Exception {
		addressDao.update(vo);
	}
	
	@Override
	public AddressVO selectOne(int adidx) throws Exception {
		return addressDao.selectOne(adidx);
	}
	
	@Override
	public void del(int adidx) throws Exception {
		addressDao.del(adidx);
	}




	

}
