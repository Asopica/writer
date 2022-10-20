package com.dgrm.test.dto;

import java.util.Date;

import lombok.Data;

@Data
public class WriterDTO {
	private int writer_idx;
	private String writer_name;
	private String writer_title;
	private String writer_content;
	private Date writer_date;
	private int writer_hit;
	
	public WriterDTO(int writer_idx, String writer_name, String writer_title, String writer_content, Date writer_date,
			int writer_hit) {
		super();
		this.writer_idx = writer_idx;
		this.writer_name = writer_name;
		this.writer_title = writer_title;
		this.writer_content = writer_content;
		this.writer_date = writer_date;
		this.writer_hit = writer_hit;
	}

	public WriterDTO() {
		super();
	}
	
	
}
