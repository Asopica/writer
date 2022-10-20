package com.dgrm.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dgrm.test.dto.WriterDTO;
import com.dgrm.test.mapper.IWriterMapper;

@RestController
@CrossOrigin("*")
public class MyController {	

	//Mapper(DAO) 연결 
	@Autowired
	IWriterMapper mapper;

	@RequestMapping("/")
	public String root() {
		return "redirect:listForm";
	}

	@RequestMapping("/listForm")
	public List<WriterDTO> listForm(Model model) {
		List<WriterDTO> list = mapper.list();
		model.addAttribute("list", list);
		System.out.println(list);
		return list;
	}

	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm"; 
	}

	@RequestMapping("/writeAction")
	public String writeAction( @RequestParam("writer_name") String writer_name,
			@RequestParam("writer_title") String writer_title,
			@RequestParam("writer_content") String writer_content ) {

		int result = mapper.write(writer_name, writer_title, writer_content);
		if( result ==1 ) {
			System.out.println("글 쓰기 성공 ");
		}else {
			System.out.println("글 쓰기 실패");
		}

		return "redirect:listForm"; 
	}
	/////////////
	@RequestMapping("/contentForm")
	public String contentForm(@ RequestParam("writer_idx") String writer_idx
			, Model model) {

		WriterDTO dto = mapper.view(writer_idx);
		model.addAttribute("dto", dto);
		return "contentForm";
	}
	
	@RequestMapping("/updateAction")
	public String updateAction( @RequestParam("writer_idx") String writer_idx,
														@RequestParam("writer_name") String writer_name,
														@RequestParam("writer_title") String writer_title,
														@RequestParam("writer_content") String writer_content,
			HttpServletRequest request) {
		int result = mapper.update(writer_idx,writer_name,writer_title,writer_content);
		if(result == 1) {
			request.getSession().setAttribute("alert_message", "글수정 o");
			return "redirect:listForm";
		}else {
			request.getSession().setAttribute("alert_message", "글 수정 x");
			return "redirect:updateForm?writer_idx="+writer_idx;
		}
	}

	@RequestMapping("/deleteForm")
	public String deleteForm() {
		return "deleteForm";
	}

	@RequestMapping("/deleteAction")
	public String deleteAction( @RequestParam("writer_idx") String writer_idx ) {


		int result = mapper.delete(writer_idx);
		if( result ==1 ) {
			System.out.println("글 삭제 o");
		}else {
			System.out.println("글 삭제 x");
		}
		return "redirect:listForm"; 
	}




}
