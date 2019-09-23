package com.project.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	
	public void Board_Insert(BoardVO vo);
	
	public List<BoardVO> Board_List(@Param("start")int start,@Param("end") int end);
}
