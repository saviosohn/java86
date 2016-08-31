package java86.VO;

import java.util.Date;

public class FineVO {
	private int fineNo;
	private String memId;
	private String memName;
	private int fineAmount;
	private String fineDetail;
	private Date fineDate;
	private int sum;
	
	
	
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getFineNo() {
		return fineNo;
	}
	public void setFineNo(int fineNo) {
		this.fineNo = fineNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getFineAmount() {
		return fineAmount;
	}
	public void setFineAmount(int fineAmount) {
		this.fineAmount = fineAmount;
	}
	public String getFineDetail() {
		return fineDetail;
	}
	public void setFineDetail(String fineDetail) {
		this.fineDetail = fineDetail;
	}
	public Date getFineDate() {
		return fineDate;
	}
	public void setFineDate(Date fineDate) {
		this.fineDate = fineDate;
	}
	
	
	
}
