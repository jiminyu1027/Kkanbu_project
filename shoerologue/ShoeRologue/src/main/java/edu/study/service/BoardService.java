package edu.study.service;

import java.util.ArrayList;

import edu.study.vo.BoardVO;

public interface BoardService {
	ArrayList<BoardVO >list() throws Exception;
	BoardVO vo(int bidx)throws Exception;
	void update(BoardVO vo)throws Exception;
	void del(BoardVO vo)throws Exception;
	
	
}
