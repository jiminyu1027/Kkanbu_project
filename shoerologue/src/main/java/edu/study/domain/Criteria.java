package edu.study.domain;

public class Criteria {

	private int page;	//�ѱ�� ������ ��ȣ
	private int perPageNumP = 15; //ȭ�鿡 ��µǴ� ����Ʈ ��
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPageNumP() {
		return perPageNumP;
	}
	public void setPerPageNumP(int perPageNumP) {
		this.perPageNumP = perPageNumP;
	}
}
