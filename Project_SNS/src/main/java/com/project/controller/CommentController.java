package com.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.board.BoardVO;
import com.project.comment.CommentServiceImpl;
import com.project.comment.CommentVO;
import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class CommentController {

	@Inject
	private CommentServiceImpl commentservice;
	
	@Inject
	private SignServiceImpl signservice;
	
	@ResponseBody
	@PostMapping("/CommentInsert")
	public String Comment_Insert(CommentVO vo){		 
		String user_id = signservice.User_Id(vo.getUnum());
		int bnum = vo.getBnum();
		int comment_size = commentservice.Comment_Size(bnum)+1;
		
		if(user_id!=null) {
			vo.setWriter(user_id);
		}
		commentservice.Comment_Insert(vo);
		return String.valueOf(comment_size);
	}

	@PostMapping("/CommentList")
	public String Comment_List(Model mv,@RequestParam("bnum")int bnum,@RequestParam("commentstart")int start,@RequestParam("commentend")int end) throws NumberFormatException{		
		List<CommentVO> comment_list = commentservice.Comment_List(bnum,start,end);
		int comment_size = commentservice.Comment_Size(bnum);
		mv.addAttribute("comment_list", comment_list);
		mv.addAttribute("Board_num", bnum);
		mv.addAttribute("comment_size", comment_size);
		
		if(start > 5) {
			return "result/comment_page";
		}
		return "result/comment";
	}
	
	
}
