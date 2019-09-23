package com.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.board.BoardServiceImpl;
import com.project.board.BoardVO;

@Controller
public class BoardController {

	@Inject
	public BoardServiceImpl service;

	@PostMapping("/insert")
	public String Board_Insert(BoardVO vo) {
		service.Board_Insert(vo);
		return "redirect:/mainIndex";
	}

//	@PostMapping("/update")
//	public String User_update(UserVO vo){
//		service.User_update(vo);
//		
//		return "index";
//		
//	}
//	
//	@PostMapping("/delete")
//	public String Board_delete(int bnum) {
//		service.Board_delete(bnum);
//		
//		return "index";
//		
//	}
//	

	@GetMapping("/mainIndex")
	public ModelAndView Board_List() {
		ModelAndView mv = new ModelAndView();
		List<BoardVO> board_list = service.Board_List(1, 3);
		mv.addObject("board_list", board_list);
		mv.setViewName("index");
		return mv;
	}

	// 스크롤용
	@ResponseBody
	@PostMapping("/mainIndextest")
	public List<BoardVO> Board_List2(@RequestParam("start") int start, @RequestParam("end") int end) {
		List<BoardVO> board_list = service.Board_List(start, end);
		return board_list;
	}

}
