package com.tig.wdc.model.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author 이해승
 * 클래스 완성작
 */
@Component
public class ClassPieceDTO {

	private int pieceNo;						//완성작번호
	private String pieceTitle;					//완성작제목
	private String piecePicture;				//완성작사진
	private int classNo;						//클래스번호
	MultipartFile pictureInfo;		//사진정보

	public ClassPieceDTO() {
		super();
	}

	public ClassPieceDTO(int pieceNo, String pieceTitle, String piecePicture, int classNo, MultipartFile pictureInfo) {
		super();
		this.pieceNo = pieceNo;
		this.pieceTitle = pieceTitle;
		this.piecePicture = piecePicture;
		this.classNo = classNo;
		this.pictureInfo = pictureInfo;
	}

	public int getPieceNo() {
		return pieceNo;
	}

	public void setPieceNo(int pieceNo) {
		this.pieceNo = pieceNo;
	}

	public String getPieceTitle() {
		return pieceTitle;
	}

	public void setPieceTitle(String pieceTitle) {
		this.pieceTitle = pieceTitle;
	}

	public String getPiecePicture() {
		return piecePicture;
	}

	public void setPiecePicture(String piecePicture) {
		this.piecePicture = piecePicture;
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
		return "ClassPieceDTO [pieceNo=" + pieceNo + ", pieceTitle=" + pieceTitle + ", piecePicture=" + piecePicture
				+ ", classNo=" + classNo + ", pictureInfo=" + pictureInfo + "]";
	}
}
