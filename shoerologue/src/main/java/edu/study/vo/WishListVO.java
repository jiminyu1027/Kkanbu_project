package edu.study.vo;

public class WishListVO {

	private int widx;
	private int pidx;
	private int midx;
	private String pBrandeng;
	private String pNameEng;
	private String pNamekr;
	private String pPrice;
	private String pFile1;
	private String pColor;
	private int cnt = 1;
	private int ctsize;
	private String delyn;
	private int[] wishchk;
	
	
	public String getpColor() {
		return pColor;
	}
	public void setpColor(String pColor) {
		this.pColor = pColor;
	}
	public int getCtsize() {
		return ctsize;
	}
	public void setCtsize(int ctsize) {
		this.ctsize = ctsize;
	}
	public String getDelyn() {
		return delyn;
	}
	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}
	public int[] getWishchk() {
		return wishchk;
	}
	public void setWishchk(int[] wishchk) {
		this.wishchk = wishchk;
	}
	public String getpNamekr() {
		return pNamekr;
	}
	public void setpNamekr(String pNamekr) {
		this.pNamekr = pNamekr;
	}
	public String getpFile1() {
		return pFile1;
	}
	public void setpFile1(String pFile1) {
		this.pFile1 = pFile1;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	public String getpNameEng() {
		return pNameEng;
	}
	public void setpNameEng(String pNameEng) {
		this.pNameEng = pNameEng;
	}
	public String getpBrandeng() {
		return pBrandeng;
	}
	public void setpBrandeng(String pBrandeng) {
		this.pBrandeng = pBrandeng;
	}
	public int getWidx() {
		return widx;
	}
	public void setWidx(int widx) {
		this.widx = widx;
	}
	public int getPidx() {
		return pidx;
	}
	public void setPidx(int pidx) {
		this.pidx = pidx;
	}
	public int getMidx() {
		return midx;
	}
	public void setMidx(int midx) {
		this.midx = midx;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
