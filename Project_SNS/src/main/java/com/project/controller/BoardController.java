package com.project.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.board.BoardServiceImpl;
import com.project.board.BoardVO;

@Controller
public class BoardController {

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	public BoardServiceImpl service;

	@PostMapping("/boardinsert")
	public String Board_Insert(@RequestParam("photo") MultipartFile file,
			@RequestParam("content") String content,
			@RequestParam("writer") String writer,
			@RequestParam("unum") int unum) throws Exception {
		
		BoardVO vo = new BoardVO();
				
		if(file.getSize()==0) {
			vo.setContent(content);
			vo.setWriter(writer);
			vo.setUnum(unum);			
		}else {
			String savedName = file.getOriginalFilename();
			savedName = uploadFile(savedName, file.getBytes());
			File f = new File(uploadPath + savedName);
			file.transferTo(f);			
			vo.setPhoto(savedName);
			vo.setContent(content);
			vo.setWriter(writer);
			vo.setUnum(unum);			
		}
		service.Board_Insert(vo);
		
		return "redirect:/mainIndex";
	}
//
//	@PostMapping("/boardinsert")
//	public String Board_Insert(BoardVO vo) throws Exception {
//		String savedName = vo.getPhoto().getOriginalFilename();
//		savedName = uploadFile(savedName, vo.getPhoto().getBytes());
//		File f = new File(uploadPath + savedName);
//		vo.getPhoto().transferTo(f);
//		//vo.setPhoto(savedName);
//
//		service.Board_Insert(vo);
//
//		return "redirect:/mainIndex";
//	}

//	@PostMapping("/boardupdate")
//	public String Board_Update(@RequestParam("photo") MultipartFile file, @RequestParam("content") String content,
//			@RequestParam("writer") String writer, @RequestParam("unum") int unum, @RequestParam("bnum") int bnum)
//			throws Exception {
//
//		BoardVO vo = new BoardVO();
//
//		if (file.getSize() == 0) {
//			vo.setContent(content);
//			vo.setWriter(writer);
//			vo.setUnum(unum);
//			vo.setBnum(bnum);
//		} else {
//			String savedName = file.getOriginalFilename();
//			savedName = uploadFile(savedName, file.getBytes());
//			File f = new File(uploadPath + savedName);
//			file.transferTo(f);
//			vo.setPhoto(savedName);
//			vo.setContent(content);
//			vo.setWriter(writer);
//			vo.setUnum(unum);
//			vo.setBnum(bnum);
//		}
//		service.Board_Update(vo);
//
//		return "redirect:/mainIndex";
//	}

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

	// 수정전 데이터 가져오기
	@ResponseBody
	@PostMapping("/boardData")
	public List<BoardVO> Board_Data(@RequestParam("bnum") int bnum) {
		List<BoardVO> board_data = service.Board_Data(bnum);
		return board_data;
	}

	// 게시글 삭제
	@PostMapping("/boardDelete")
	public String Board_Delete(@RequestParam("bnum") int bnum) {
		service.Board_Delete(bnum);
		return "redirect/mainIndex";
	}

	// 파일 이름 중복 없애는
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

}
