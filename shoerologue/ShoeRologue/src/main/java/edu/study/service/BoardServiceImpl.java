package edu.study.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.BoardDAO;
import edu.study.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

	@Override
	public ArrayList<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		
		ArrayList<BoardVO> list = boardDao.list();
		return list;
	}

	@Override
	public BoardVO vo(int bidx) throws Exception {
		// TODO Auto-generated method stub
		BoardVO boardVO = boardDao.boardlist(bidx);
		
		return boardVO;
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		boardDao.update(vo);
		
	}

	@Override
	public void del(BoardVO vo) throws Exception {
		boardDao.del(vo);
		
	}

}
