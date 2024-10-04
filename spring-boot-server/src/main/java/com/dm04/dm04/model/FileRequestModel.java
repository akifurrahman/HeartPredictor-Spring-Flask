package com.dm04.dm04.model;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.annotation.JsonIgnoreType;

@Configuration
@JsonIgnoreType
public class FileRequestModel {

    int userid;
    MultipartFile file;

	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}

    
    
}
