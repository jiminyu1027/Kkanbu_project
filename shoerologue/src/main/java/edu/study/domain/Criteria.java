package edu.study.domain;

public class Criteria {

	private int page;	//넘기는 페이지 번호
	private int perPageNum = 15; //화면에 출력되는 리스트 수
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
}
