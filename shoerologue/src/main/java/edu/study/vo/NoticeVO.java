package edu.study.vo;

public class NoticeVO {

	private int nidx;
	private String nTitle;
	private String nContents;
	private String nWriteday;
	private String nDelYn;
	private String nFile;
	private int midx;
	private int pidx;
	private int nCnt;
	public int getnCnt() {
		return nCnt;
	}
	public void setnCnt(int nCnt) {
		this.nCnt = nCnt;
	}
	public int getNidx() {
		return nidx;
	}
	public void setNidx(int nidx) {
		this.nidx = nidx;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContents() {
		return nContents;
	}
	public void setnContents(String nContents) {
		this.nContents = nContents;
	}
	public String getnWriteday() {
		return nWriteday;
	}
	public void setnWriteday(String nWriteday) {
		this.nWriteday = nWriteday;
	}
	public String getnDelYn() {
		return nDelYn;
	}
	public void setnDelYn(String nDelYn) {
		this.nDelYn = nDelYn;
	}
	public String getnFile() {
		return nFile;
	}
	public void setnFile(String nFile) {
		this.nFile = nFile;
	}
	public int getMidx() {
		return midx;
	}
	public void setMidx(int midx) {
		this.midx = midx;
	}
	public int getPidx() {
		return pidx;
	}
	public void setPidx(int pidx) {
		this.pidx = pidx;
	}
}
