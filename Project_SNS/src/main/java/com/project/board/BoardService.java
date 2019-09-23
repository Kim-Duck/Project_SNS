package com.project.board;



import java.util.List;



public interface BoardService {
	
	public void Board_Insert(BoardVO vo);
	
	public List<BoardVO> Board_List(int start,int end);
	
}
