package com.tig.wdc.admin.model.dto;

public class CalculateDTO {

	private int calcNo;
	private int teNo;
	private String teType;
	private String teName;
	private String teId;
	private String calcMonth;
	private String calcYN;
	private String bank;
	private String teAcntNo;
	private String teAcntHolder;
	private String totalSalesString;
	private int totalSales;
	private int tax;
	private String useFeesString;
	private int useFees;
	private String cardFeesString;
	private int cardFees;
	private String calcAmountString;
	private int calcAmount;
	private int classNo;
	private String className;
	private String classType;
	private int countStudent;
	private int cday;
	private String today;
	private int tuitionMNo;
	
	public CalculateDTO() {
		super();
	}

	public CalculateDTO(int calcNo, int teNo, String teType, String teName, String teId, String calcMonth,
			String calcYN, String bank, String teAcntNo, String teAcntHolder, String totalSalesString, int totalSales,
			int tax, String useFeesString, int useFees, String cardFeesString, int cardFees, String calcAmountString,
			int calcAmount, int classNo, String className, String classType, int countStudent, int cday, String today,
			int tuitionMNo) {
		super();
		this.calcNo = calcNo;
		this.teNo = teNo;
		this.teType = teType;
		this.teName = teName;
		this.teId = teId;
		this.calcMonth = calcMonth;
		this.calcYN = calcYN;
		this.bank = bank;
		this.teAcntNo = teAcntNo;
		this.teAcntHolder = teAcntHolder;
		this.totalSalesString = totalSalesString;
		this.totalSales = totalSales;
		this.tax = tax;
		this.useFeesString = useFeesString;
		this.useFees = useFees;
		this.cardFeesString = cardFeesString;
		this.cardFees = cardFees;
		this.calcAmountString = calcAmountString;
		this.calcAmount = calcAmount;
		this.classNo = classNo;
		this.className = className;
		this.classType = classType;
		this.countStudent = countStudent;
		this.cday = cday;
		this.today = today;
		this.tuitionMNo = tuitionMNo;
	}

	public int getCalcNo() {
		return calcNo;
	}

	public void setCalcNo(int calcNo) {
		this.calcNo = calcNo;
	}

	public int getTeNo() {
		return teNo;
	}

	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}

	public String getTeType() {
		return teType;
	}

	public void setTeType(String teType) {
		this.teType = teType;
	}

	public String getTeName() {
		return teName;
	}

	public void setTeName(String teName) {
		this.teName = teName;
	}

	public String getTeId() {
		return teId;
	}

	public void setTeId(String teId) {
		this.teId = teId;
	}

	public String getCalcMonth() {
		return calcMonth;
	}

	public void setCalcMonth(String calcMonth) {
		this.calcMonth = calcMonth;
	}

	public String getCalcYN() {
		return calcYN;
	}

	public void setCalcYN(String calcYN) {
		this.calcYN = calcYN;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getTeAcntNo() {
		return teAcntNo;
	}

	public void setTeAcntNo(String teAcntNo) {
		this.teAcntNo = teAcntNo;
	}

	public String getTeAcntHolder() {
		return teAcntHolder;
	}

	public void setTeAcntHolder(String teAcntHolder) {
		this.teAcntHolder = teAcntHolder;
	}

	public String getTotalSalesString() {
		return totalSalesString;
	}

	public void setTotalSalesString(String totalSalesString) {
		this.totalSalesString = totalSalesString;
	}

	public int getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(int totalSales) {
		this.totalSales = totalSales;
	}

	public int getTax() {
		return tax;
	}

	public void setTax(int tax) {
		this.tax = tax;
	}

	public String getUseFeesString() {
		return useFeesString;
	}

	public void setUseFeesString(String useFeesString) {
		this.useFeesString = useFeesString;
	}

	public int getUseFees() {
		return useFees;
	}

	public void setUseFees(int useFees) {
		this.useFees = useFees;
	}

	public String getCardFeesString() {
		return cardFeesString;
	}

	public void setCardFeesString(String cardFeesString) {
		this.cardFeesString = cardFeesString;
	}

	public int getCardFees() {
		return cardFees;
	}

	public void setCardFees(int cardFees) {
		this.cardFees = cardFees;
	}

	public String getCalcAmountString() {
		return calcAmountString;
	}

	public void setCalcAmountString(String calcAmountString) {
		this.calcAmountString = calcAmountString;
	}

	public int getCalcAmount() {
		return calcAmount;
	}

	public void setCalcAmount(int calcAmount) {
		this.calcAmount = calcAmount;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public int getCountStudent() {
		return countStudent;
	}

	public void setCountStudent(int countStudent) {
		this.countStudent = countStudent;
	}

	public int getCday() {
		return cday;
	}

	public void setCday(int cday) {
		this.cday = cday;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public int getTuitionMNo() {
		return tuitionMNo;
	}

	public void setTuitionMNo(int tuitionMNo) {
		this.tuitionMNo = tuitionMNo;
	}

	@Override
	public String toString() {
		return "CalculateDTO [calcNo=" + calcNo + ", teNo=" + teNo + ", teType=" + teType + ", teName=" + teName
				+ ", teId=" + teId + ", calcMonth=" + calcMonth + ", calcYN=" + calcYN + ", bank=" + bank
				+ ", teAcntNo=" + teAcntNo + ", teAcntHolder=" + teAcntHolder + ", totalSalesString=" + totalSalesString
				+ ", totalSales=" + totalSales + ", tax=" + tax + ", useFeesString=" + useFeesString + ", useFees="
				+ useFees + ", cardFeesString=" + cardFeesString + ", cardFees=" + cardFees + ", calcAmountString="
				+ calcAmountString + ", calcAmount=" + calcAmount + ", classNo=" + classNo + ", className=" + className
				+ ", classType=" + classType + ", countStudent=" + countStudent + ", cday=" + cday + ", today=" + today
				+ ", tuitionMNo=" + tuitionMNo + "]";
	}

}
