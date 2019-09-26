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
	public List<BoardVO> Board_List(int start,int end,String user_id) {		
		return mapper.Board_List(start,end,user_id);
	}
	
	@Override
	public List<BoardVO> Board_Data(int bnum) {
		return mapper.Board_Data(bnum);
	}
	
	@Override
	public void Board_Update(BoardVO vo) {
		mapper.Board_Update(vo);
	}

	@Override
	public void Board_Delete(int bnum) {
		mapper.Board_Delete(bnum);
	}


}
