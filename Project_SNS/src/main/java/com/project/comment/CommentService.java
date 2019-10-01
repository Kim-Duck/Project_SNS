package com.project.comment;

import java.util.List;

public interface CommentService {
	
	public void Comment_Insert(CommentVO vo);
	
	public List<CommentVO> Comment_List(int bnum);
	
	public List<CommentVO> Comment_List2(int bnum);

}
