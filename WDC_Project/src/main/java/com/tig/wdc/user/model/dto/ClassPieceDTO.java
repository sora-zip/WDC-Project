package com.tig.wdc.user.model.dto;

/**
 * @author SORA
 * 클래스 완성작 DTO
 */
public class ClassPieceDTO {

	private int pieceNo;
	private String pieceTitle;
	private String piecePic;
	private int clsNo;

	public ClassPieceDTO() {
		super();
	}

	public ClassPieceDTO(int pieceNo, String pieceTitle, String piecePic, int clsNo) {
		super();
		this.pieceNo = pieceNo;
		this.pieceTitle = pieceTitle;
		this.piecePic = piecePic;
		this.clsNo = clsNo;
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

	public String getPiecePic() {
		return piecePic;
	}

	public void setPiecePic(String piecePic) {
		this.piecePic = piecePic;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	@Override
	public String toString() {
		return "ClassPieceDTO [pieceNo=" + pieceNo + ", pieceTitle=" + pieceTitle + ", piecePic=" + piecePic
				+ ", clsNo=" + clsNo + "]";
	}

}
