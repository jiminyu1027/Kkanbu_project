package edu.study.domain;

public class Criteria {

	private int page;	//�ѱ�� ������ ��ȣ
	private int perPageNum = 15; //ȭ�鿡 ��µǴ� ����Ʈ ��
	
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
