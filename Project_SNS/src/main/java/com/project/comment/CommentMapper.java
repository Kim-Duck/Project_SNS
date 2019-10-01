package com.project.comment;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
	public void Comment_Insert(CommentVO vo);
	
	public List<CommentVO> Comment_List(@Param("bnum")int bnum);
	
	public List<CommentVO> Comment_List2(@Param("bnum") int bnum);
}
