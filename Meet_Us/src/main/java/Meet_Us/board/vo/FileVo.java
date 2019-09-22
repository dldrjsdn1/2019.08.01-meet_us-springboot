package Meet_Us.board.vo;

import java.util.Date;

public class FileVo {
	 private int seq;
	 private int upSeq;
	 private String fileName;
	 private String fileRealName;
	 private String filePath;
	 private int downCnt;
	 private Date crtDt;
	 private Date lastDt;
	 private  String delFlag;
	 
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getUpSeq() {
		return upSeq;
	}
	public void setUpSeq(int upSeq) {
		this.upSeq = upSeq;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getDownCnt() {
		return downCnt;
	}
	public void setDownCnt(int downCnt) {
		this.downCnt = downCnt;
	}
	public Date getCrtDt() {
		return crtDt;
	}
	public void setCrtDt(Date crtDt) {
		this.crtDt = crtDt;
	}
	public Date getLastDt() {
		return lastDt;
	}
	public void setLastDt(Date lastDt) {
		this.lastDt = lastDt;
	}
	public String getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
}
