package com.tig.wdc.model.dto;

import java.sql.Date;

/**
 * 공지사항 정보
 * @author 이해승
 * 
 */
public class NoticeDTO {

	private int no;						//공지사항 번호 
	private String title;				//제목
	private String content;				//내용
	private java.sql.Date writeDate;	//작성일
	private String type; 				//구분(전체, 강사, 이용자)
	private String important; 			//중요공지여부
	private int adminNo;				//관리자번호
	
	public NoticeDTO() {}

	public NoticeDTO(int no, String title, String content, Date writeDate, String type, String important, int adminNo) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.type = type;
		this.important = important;
		this.adminNo = adminNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public java.sql.Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(java.sql.Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImportant() {
		return important;
	}

	public void setImportant(String important) {
		this.important = important;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", content=" + content + ", writeDate=" + writeDate
				+ ", type=" + type + ", important=" + important + ", adminNo=" + adminNo + "]";
	}
}
