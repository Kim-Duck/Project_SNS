package com.project.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService{
	
	
	@Autowired
	private CommentMapper mapper;

	@Override
	public void Comment_Insert(CommentVO vo) {
		mapper.Comment_Insert(vo);		
	}

	@Override
	public List<CommentVO> Comment_List(int bnum,int start, int end) {
		return mapper.Comment_List(bnum,start,end);
	}

	@Override
	public int Comment_Size(int bnum) {
		return mapper.Comment_Size(bnum);
	}


	


}
