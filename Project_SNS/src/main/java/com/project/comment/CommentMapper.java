package com.project.comment;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
	public void Comment_Insert(CommentVO vo);
	
	public List<CommentVO> Comment_List(@Param("bnum")int bnum,@Param("start")int start,@Param("end")int end);
	
	public int Comment_Size(@Param("bnum") int bnum);
	
}
