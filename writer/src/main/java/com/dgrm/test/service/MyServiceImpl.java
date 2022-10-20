package com.dgrm.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgrm.test.dto.WriterDTO;
import com.dgrm.test.mapper.IWriterMapper;

@Service
public class MyServiceImpl implements IService{

	@Autowired
	IWriterMapper mapper;
	
	@Override
	public List<WriterDTO> list() {
		// TODO Auto-generated method stub
		return mapper.list();
	}

	@Override
	public int write(String writer_name, String writer_title, String writer_content) {
		// TODO Auto-generated method stub
		return mapper.write(writer_name,writer_title, writer_content);
	}

	@Override
	public int delete(String writer_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(writer_idx);
	}

	@Override
	public WriterDTO view(String writer_idx) {
		// TODO Auto-generated method stub
		return mapper.view(writer_idx);
	}

	@Override
	public int update(String writer_idx, String writer_name, String writer_title, String writer_content) {
		// TODO Auto-generated method stub
		return mapper.update(writer_idx, writer_name, writer_title, writer_content);
	}

}
