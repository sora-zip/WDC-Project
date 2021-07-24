package com.tig.wdc.model.dto;

import org.springframework.stereotype.Component;

/**
 * @author 이해승
 * 커리큘럼
 */
@Component
public class CurriculumDTO {

	private int curriNo;
	private int curriStep;
	private String curriTitle;
	private String curriContent;
	private int clsNo;

	public CurriculumDTO() {}

	public CurriculumDTO(int curriNo, int curriStep, String curriTitle, String curriContent, int clsNo) {
		super();
		this.curriNo = curriNo;
		this.curriStep = curriStep;
		this.curriTitle = curriTitle;
		this.curriContent = curriContent;
		this.clsNo = clsNo;
	}

	public int getCurriNo() {
		return curriNo;
	}

	public void setCurriNo(int curriNo) {
		this.curriNo = curriNo;
	}

	public int getCurriStep() {
		return curriStep;
	}

	public void setCurriStep(int curriStep) {
		this.curriStep = curriStep;
	}

	public String getCurriTitle() {
		return curriTitle;
	}

	public void setCurriTitle(String curriTitle) {
		this.curriTitle = curriTitle;
	}

	public String getCurriContent() {
		return curriContent;
	}

	public void setCurriContent(String curriContent) {
		this.curriContent = curriContent;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	@Override
	public String toString() {
		return "CurriculumDTO [curriNo=" + curriNo + ", curriStep=" + curriStep + ", curriTitle=" + curriTitle
				+ ", curriContent=" + curriContent + ", clsNo=" + clsNo + "]";
	}
}
