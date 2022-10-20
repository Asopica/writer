package com.dgrm.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dgrm.test.dto.WriterDTO;

@Service
public interface IService {
	public List<WriterDTO> list();
	public int write(String writer_name, String writer_title, String writer_content);
	public int delete(String writer_idx);
	public WriterDTO view(String writer_idx);
	public int update(String writer_idx,String writer_name,String writer_title,String writer_content);
}
