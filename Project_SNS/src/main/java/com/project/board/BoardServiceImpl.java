package com.project.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	public BoardMapper mapper;

	@Override
	public void Board_Insert(BoardVO vo) {
		mapper.Board_Insert(vo);
	}

	@Override
	public List<BoardVO> Board_List(int start,int end) {		
		return mapper.Board_List(start,end);
	}

}
