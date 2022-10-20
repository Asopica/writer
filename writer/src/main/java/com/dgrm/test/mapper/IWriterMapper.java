package com.dgrm.test.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.dgrm.test.dto.WriterDTO;

// DAO : Data Access Object  데이터 연결
// Mybatis와 인터페이스 함수를 연결
@Mapper
public interface IWriterMapper {
	public List<WriterDTO> list();
	public int write(String writer_name, String writer_title, String writer_content);
	public int delete(String writer_idx);
	public WriterDTO view(String writer_idx);
	public int update(String writer_idx,String writer_name,String writer_title,String writer_content);
}
