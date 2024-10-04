package com.dm04.dm04.model;



public class FileModel {
	
	int FileId;
	int UserId;
	String fileName;
	String hashKey;
	String domain;
	String fileUrl;
	
	public FileModel() {
	}
	public FileModel(String fileName, String fileUrl) {
		this.fileName = fileName;
		this.fileUrl = fileUrl;
	}
	public int getFileId() {
		return FileId;
	}
	public void setFileId(int fileId) {
		FileId = fileId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getHashKey() {
		return hashKey;
	}
	public void setHashKey(String hashKey) {
		this.hashKey = hashKey;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
		

}

