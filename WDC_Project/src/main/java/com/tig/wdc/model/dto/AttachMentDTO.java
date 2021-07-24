package com.tig.wdc.model.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author 이해승
 * 클래스 대표 사진
 *
 */
@Component
public class AttachMentDTO {

	private int attachNo;			//첨부파일번호
	private String originName;		//원본사진이름
	private String saveName;		//저장이름
	private String savePath;		//저장경로
	private String type;			//사진타입
	private String thumbnailPath;	//썸네일경로
	private String attachStatus;	//첨부상태
	private int classNo;			//클래스번호
	private MultipartFile pictureInfo;  //사진정보
	
	public AttachMentDTO() {}

	public AttachMentDTO(int attachNo, String originName, String saveName, String savePath, String type,
			String thumbnailPath, String attachStatus, int classNo, MultipartFile pictureInfo) {
		super();
		this.attachNo = attachNo;
		this.originName = originName;
		this.saveName = saveName;
		this.savePath = savePath;
		this.type = type;
		this.thumbnailPath = thumbnailPath;
		this.attachStatus = attachStatus;
		this.classNo = classNo;
		this.pictureInfo = pictureInfo;
	}

	public int getAttachNo() {
		return attachNo;
	}

	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getThumbnailPath() {
		return thumbnailPath;
	}

	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}

	public String getAttachStatus() {
		return attachStatus;
	}

	public void setAttachStatus(String attachStatus) {
		this.attachStatus = attachStatus;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public MultipartFile getPictureInfo() {
		return pictureInfo;
	}

	public void setPictureInfo(MultipartFile pictureInfo) {
		this.pictureInfo = pictureInfo;
	}

	@Override
	public String toString() {
		return "AttachMentDTO [attachNo=" + attachNo + ", originName=" + originName + ", saveName=" + saveName
				+ ", savePath=" + savePath + ", type=" + type + ", thumbnailPath=" + thumbnailPath + ", attachStatus="
				+ attachStatus + ", classNo=" + classNo + ", pictureInfo=" + pictureInfo + "]";
	}
	
}
