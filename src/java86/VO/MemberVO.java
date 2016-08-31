package java86.VO;

import java.util.Date;

public class MemberVO {
	String	memId;
	String	memPassword;
	String	memName;
	String	memEmailId;
	int		memEmailDomainIndex;
	String	memEmailDomain;
	String	memTel;
	Date	memRegDate;
	int		memLevel;
//	String	imgRealName;

	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPassword() {
		return memPassword;
	}
	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmailId() {
		return memEmailId;
	}
	public void setMemEmailId(String memEmailId) {
		this.memEmailId = memEmailId;
	}
	public int getMemEmailDomainIndex() {
		return memEmailDomainIndex;
	}
	public void setMemEmailDomainIndex(int memEmailDomainIndex) {
		this.memEmailDomainIndex = memEmailDomainIndex;
	}
	public String getMemEmailDomain() {
		return memEmailDomain;
	}
	public void setMemEmailDomain(String memEmailDomain) {
		this.memEmailDomain = memEmailDomain;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public Date getMemRegDate() {
		return memRegDate;
	}
	public void setMemRegDate(Date memRegDate) {
		this.memRegDate = memRegDate;
	}
	public int getMemLevel() {
		return memLevel;
	}
	public void setMemLevel(int memLevel) {
		this.memLevel = memLevel;
	}
//	public String getImgRealName() {
//		return imgRealName;
//	}
//	public void setImgRealName(String imgRealName) {
//		this.imgRealName = imgRealName;
//	}	
}
