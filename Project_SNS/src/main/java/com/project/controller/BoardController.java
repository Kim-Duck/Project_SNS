package com.project.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;


import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



import com.project.board.BoardServiceImpl;
import com.project.board.BoardVO;
import com.project.comment.CommentServiceImpl;

import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class BoardController {

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private BoardServiceImpl service;

	@Inject
	private SignServiceImpl signservice;

	@Inject
	private CommentServiceImpl commentservice;

	@ResponseBody
	@PostMapping("/boardinsert")
	public String Board_Insert(BoardVO vo) throws Exception {
		String savedName = "";
		if (vo.getPhotoFile().getSize() == 0) {
			vo.setPhoto(null);
		} else {
			savedName = uploadFile(vo.getPhotoFile().getOriginalFilename(), vo.getPhotoFile().getBytes());
			vo.setPhoto(savedName);
			File f = new File(uploadPath + savedName);
			vo.getPhotoFile().transferTo(f);
		}
		service.Board_Insert(vo);
		return "0";
	}

	@ResponseBody
	@PostMapping("/boardupdate")
	public String Board_Update(BoardVO vo) throws Exception {
		String savedName = "";
		if (vo.getPhotoFile().getSize() == 0) {
			vo.setPhoto(null);
		} else {
			savedName = uploadFile(vo.getPhotoFile().getOriginalFilename(), vo.getPhotoFile().getBytes());
			vo.setPhoto(savedName);
			File f = new File(uploadPath + savedName);
			vo.getPhotoFile().transferTo(f);
		}
		service.Board_Update(vo);
		return "0";
	}

	@PostMapping("/boardlist")
	public String Board_List(HttpServletRequest request, HttpServletResponse response, Model mv,
			@RequestParam("start") int start, @RequestParam("end") int end) {

		HttpSession session = request.getSession();
		UserVO vo = (UserVO) session.getAttribute("user");
		List<BoardVO> board_list = service.Board_List(start, end, vo.getUser_id());
		String main = (String) session.getAttribute("main");
		String another_id = (String) session.getAttribute("another_id");
		if (main == null) {
			if (another_id != null) {
				// 자신의 페이지
				if (vo.getUser_id().equals(another_id)) {
					List<BoardVO> board_List_Self = service.Board_List_Self(start, end, vo.getUser_id());
					mv.addAttribute("board_list", board_List_Self);
					return "result/list";
				}
				// 다른사람 페이지
				else {
					List<BoardVO> board_List_Self = service.Board_List_Self(start, end, another_id);
					mv.addAttribute("board_list", board_List_Self);
					return "result/list";
				}
			}
		}

		// 메인페이지에서 친구X 팔로우X 이고 자기게시글만 있을때
		if (board_list.isEmpty()) {			
			List<BoardVO> board_List_Self = service.Board_List_Self(start, end, vo.getUser_id());
			mv.addAttribute("board_list", board_List_Self);
		}
		// 메인페이지에 전부뽑기
		else {			
			mv.addAttribute("board_list", board_list);
		}

		return "result/list";
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
		return "index";
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
