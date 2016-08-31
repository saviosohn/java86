package java86.VO;

public class FileVO {
	String	fileRealName;
	String	fileOriName;
	String	filePath;
	long	fileSize;
	String	relativeTbl;
	String	relativeKey;
	String	fileType;
	String	thumbnail;

	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getRelativeTbl() {
		return relativeTbl;
	}
	public void setRelativeTbl(String relativeTbl) {
		this.relativeTbl = relativeTbl;
	}
	public String getRelativeKey() {
		return relativeKey;
	}
	public void setRelativeKey(String relativeKey) {
		this.relativeKey = relativeKey;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
}

