package edu.study.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class PageMaker {

	private int totalCount; //��ü �Խñ��� ����
	private int startPage; //�׺���̼ǹ��� ���� ��ȣ ù��° �����ϴ� ������
	private int endPage; //�׺���̼ǹ��� �� ��ȣ
	private int displayPageNum=10; //�������� ������ ����
	private boolean prev; //���� ��ư
	private boolean next; //���� ��ư
	private SearchCriteria scri; //�������� ��Ƽ� ����ϴ� Ŭ����
	
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	private void calcData() {
		//���� ������ ��ȣ�� �������� ��ȣ�� ����
		//������ư ������ư�� ������ ������ ���Ǹ� �ϴ°�
		//		1 2 3 4 5 6 7 8 9 10
		//1������ �����ϰ� 10������ ������ 11������ �����ϰ� 20������ ������ ����
		
		endPage = (int)(Math.ceil(scri.getPage()/(double)displayPageNum)*displayPageNum); 
		//����ȣ�� �����ϱ� ���ؼ� ��� ������/ �׺���̼ǹ� ����
		//10������ ���� 10 20 30 40 
		//ceil �ø� �޼ҵ� 
		startPage = (endPage-displayPageNum)+1;
		// 1������ ������ �Ѵٴ� ��
		int tempEndPage = (int)Math.ceil(totalCount/(double)scri.getPerPageNum()); //��ü����/15���� �����°�
		//�ӽ� ����ȣ ������
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		//������ư �����
		prev = (startPage == 1 ? false:true); //��ŸƮ�������� 1�̸� fasle ������������ ��Ÿ�� �ʿ䰡 ����
		//������ư �����
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
