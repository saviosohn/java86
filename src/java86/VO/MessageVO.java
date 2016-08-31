package java86.VO;

import java.util.Date;

public class MessageVO {
	private String mRecvId;
	private String mRecvName;
	private String mTitle;
	private String mContent;
	private String mSendId;
	private String mSendName;
	private Date mRegDate;
	private String mRecvDelYN;
	private String mSendDelYN;
	private String mReadYN;
	private int mNo; 
	
	
	
	public String getmRecvName() {
		return mRecvName;
	}
	public void setmRecvName(String mRecvName) {
		this.mRecvName = mRecvName;
	}
	public String getmSendName() {
		return mSendName;
	}
	public void setmSendName(String mSendName) {
		this.mSendName = mSendName;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmRecvId() {
		return mRecvId;
	}
	public void setmRecvId(String mRecvId) {
		this.mRecvId = mRecvId;
	}
	public String getmTitle() {
		return mTitle;
	}
	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}
	public String getmContent() {
		return mContent;
	}
	public void setmContent(String mContent) {
		this.mContent = mContent;
	}
	public String getmSendId() {
		return mSendId;
	}
	public void setmSendId(String mSendId) {
		this.mSendId = mSendId;
	}
	public Date getmRegDate() {
		return mRegDate;
	}
	public void setmRegDate(Date mRegDate) {
		this.mRegDate = mRegDate;
	}
	public String getmRecvDelYN() {
		return mRecvDelYN;
	}
	public void setmRecvDelYN(String mRecvDelYN) {
		this.mRecvDelYN = mRecvDelYN;
	}
	public String getmSendDelYN() {
		return mSendDelYN;
	}
	public void setmSendDelYN(String mSendDelYN) {
		this.mSendDelYN = mSendDelYN;
	}
	public String getmReadYN() {
		return mReadYN;
	}
	public void setmReadYN(String mReadYN) {
		this.mReadYN = mReadYN;
	}
	
	
}
