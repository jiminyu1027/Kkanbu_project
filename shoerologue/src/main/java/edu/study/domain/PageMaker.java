package edu.study.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class PageMaker {

	private int totalCount; //전체 게시글의 갯수
	private int startPage; //네비게이션바의 시작 번호 첫번째 시작하는 페이지
	private int endPage; //네비게이션바의 끝 번호
	private int displayPageNum=10; //페이지의 갯수를 뜻함
	private boolean prev; //이전 버튼
	private boolean next; //다음 버튼
	private SearchCriteria scri; //페이지를 담아서 사용하는 클래스
	
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	private void calcData() {
		//시작 페이지 번호와 끝페이지 번호를 정의
		//이전버튼 다음버튼이 나올지 말지를 정의를 하는것
		//		1 2 3 4 5 6 7 8 9 10
		//1번으로 시작하고 10번으로 끝날지 11번으로 시작하고 20번으로 끝날지 정함
		
		endPage = (int)(Math.ceil(scri.getPage()/(double)displayPageNum)*displayPageNum); 
		//끝번호를 추출하기 위해서 모든 페이지/ 네비게이션바 갯수
		//10단위인 것임 10 20 30 40 
		//ceil 올림 메소드 
		startPage = (endPage-displayPageNum)+1;
		// 1번부터 시작을 한다는 말
		int tempEndPage = (int)Math.ceil(totalCount/(double)scri.getPerPageNum()); //전체갯수/15개로 나누는것
		//임시 끝번호 페이지
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		//이전버튼 만들기
		prev = (startPage == 1 ? false:true); //스타트페이지가 1이면 fasle 이전페이지가 나타날 필요가 없다
		//다음버튼 만들기
		next = (endPage * scri.getPerPageNum() >= totalCount ? false:true);
		
		
		
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public SearchCriteria getScri() {
		return scri;
	}
	public void setScri(SearchCriteria scri) {
		this.scri = scri;
	}
	
	public String encoding(String keyword) {
		String keyword2 = "";
		
		try {
			if(keyword != null)
			keyword2 = URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return keyword2;
	}
}
