package bitcamp.java110.cms.domain;

import java.sql.Date;

//공예품
public class Product {
  private int no; // 공예품번호
  private String titl; // 제목
  private String conts; // 내용
  private int pric; // 가격
  private Date rgdt; // 등록일
  private int stock; // 재고
  private String phot; // 사진
  private int meno; // 판매자번호
  private int ctno; // 인증서번호
  private int stno; // 소분류번호

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getTitl() {
    return titl;
  }

  public void setTitl(String titl) {
    this.titl = titl;
  }

  public String getConts() {
    return conts;
  }

  public void setConts(String conts) {
    this.conts = conts;
  }

  public int getPric() {
    return pric;
  }

  public void setPric(int pric) {
    this.pric = pric;
  }

  public Date getRgdt() {
    return rgdt;
  }

  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }

  public int getStock() {
    return stock;
  }

  public void setStock(int stock) {
    this.stock = stock;
  }

  public String getPhot() {
    return phot;
  }

  public void setPhot(String phot) {
    this.phot = phot;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public int getCtno() {
    return ctno;
  }

  public void setCtno(int ctno) {
    this.ctno = ctno;
  }

  public int getStno() {
    return stno;
  }

  public void setStno(int stno) {
    this.stno = stno;
  }



}