package com.tig.wdc.model.dto;

/**
 * 정산 정보 조회용 DTO
 * @author 강현우
 */
public class BalanceDTO {
	
	private int calcNo;			// 정산 번호
	private String calcMonth;	// 정산 월
	private int calcAmount;		// 정산 금액
	private int useFee;			// 사용 수수료
	private int tax;			// 세금(원청징수 or 소비세)
	private int cardFee;		// 카드 수수료
	private int teNo;			// 강사 번호
	private int tuitionMNo;		// 수업료 관리번호
	private int rowNum;			// ROWNUM 사용 용도
	
	public BalanceDTO() {}

	public BalanceDTO(int calcNo, String calcMonth, int calcAmount, int useFee, int tax, int cardFee, int teNo,
			int tuitionMNo, int rowNum) {
		super();
		this.calcNo = calcNo;
		this.calcMonth = calcMonth;
		this.calcAmount = calcAmount;
		this.useFee = useFee;
		this.tax = tax;
		this.cardFee = cardFee;
		this.teNo = teNo;
		this.tuitionMNo = tuitionMNo;
		this.rowNum = rowNum;
	}

	public int getCalcNo() {
		return calcNo;
	}

	public void setCalcNo(int calcNo) {
		this.calcNo = calcNo;
	}

	public String getCalcMonth() {
		return calcMonth;
	}

	public void setCalcMonth(String calcMonth) {
		this.calcMonth = calcMonth;
	}

	public int getCalcAmount() {
		return calcAmount;
	}

	public void setCalcAmount(int calcAmount) {
		this.calcAmount = calcAmount;
	}

	public int getUseFee() {
		return useFee;
	}

	public void setUseFee(int useFee) {
		this.useFee = useFee;
	}

	public int getTax() {
		return tax;
	}

	public void setTax(int tax) {
		this.tax = tax;
	}

	public int getCardFee() {
		return cardFee;
	}

	public void setCardFee(int cardFee) {
		this.cardFee = cardFee;
	}

	public int getTeNo() {
		return teNo;
	}

	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}

	public int getTuitionMNo() {
		return tuitionMNo;
	}

	public void setTuitionMNo(int tuitionMNo) {
		this.tuitionMNo = tuitionMNo;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	@Override
	public String toString() {
		return "BalanceDTO [calcNo=" + calcNo + ", calcMonth=" + calcMonth + ", calcAmount=" + calcAmount + ", useFee="
				+ useFee + ", tax=" + tax + ", cardFee=" + cardFee + ", teNo=" + teNo + ", tuitionMNo=" + tuitionMNo
				+ ", rowNum=" + rowNum + "]";
	}

}
