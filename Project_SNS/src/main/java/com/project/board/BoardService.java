package com.project.board;



import java.util.List;



public interface BoardService {
	
	public void Board_Insert(BoardVO vo);
	
	public List<BoardVO> Board_List(int start,int end,String user_id);
	
	public List<BoardVO> Board_Data(int bnum);
	
	public void Board_Update(BoardVO vo);
	
	public void Board_Delete(int bnum);
	
	
}
