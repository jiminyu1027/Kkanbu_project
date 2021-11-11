package edu.study.vo;

public class BoardVO {

	private String subject;
	private String writeday;
	private String contents;
	private String writer;
	private int bidx;
	
	public BoardVO() {
		
	}
	
	public BoardVO(String subject, String writeday) {
		this.subject = subject;
		this.writeday = writeday;
	}
	
	public BoardVO(String subject, String writeday, String contents, String writer) {
		this.subject = subject;
		this.writeday = writeday;
		this.contents = contents;
		this.writer = writer;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriterday(String writeday) {
		this.writeday = writeday;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getBidx() {
		return bidx;
	}

	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	
	
	
}
