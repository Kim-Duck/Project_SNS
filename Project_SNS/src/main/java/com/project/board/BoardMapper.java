package com.project.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	
	public void Board_Insert(BoardVO vo);
	
	public List<BoardVO> Board_List(@Param("start")int start,@Param("end") int end);
	
	public List<BoardVO> Board_Data(@Param("bnum") int bnum);
	
	public void Board_Update(BoardVO vo);
	
	public void Board_Delete(@Param("bnum") int bnum);
}
