package com.project.comment;

import java.util.List;

public interface CommentService {
	
	public void Comment_Insert(CommentVO vo);
	
	public List<CommentVO> Comment_List(int bnum,int start,int end);
	
	public int Comment_Size(int bnum);
	
	

}
