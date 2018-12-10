package bitcamp.java110.cms.domain;

import java.sql.Date;

// 공예품 댓글
public class ProductRep {

  private int no; // 댓글 번호
  private int meno; // 작성자 번호
  private int ptno; // 공예품 번호
  private String conts; // 내용
  private int star; // 별점
  private Date rgdt; // 등록일
  private String phot; // 사진
  
  private Mentee mentee;
  
  private String titl;  // 상품의 titl
  private String prdtphot; // 상품의 phot

  
  
  public String getPrdtphot() {
    return prdtphot;
  }

  public void setPrdtphot(String prdtphot) {
    this.prdtphot = prdtphot;
  }

  public String getTitl() {
    return titl;
  }

  public void setTitl(String titl) {
    this.titl = titl;
  }

  public Mentee getMentee() {
    return mentee;
  }

  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public int getPtno() {
    return ptno;
  }

  public void setPtno(int ptno) {
    this.ptno = ptno;
  }

  public String getConts() {
    return conts;
  }

  public void setConts(String conts) {
    this.conts = conts;
  }

  public int getStar() {
    return star;
  }

  public void setStar(int star) {
    this.star = star;
  }

  public Date getRgdt() {
    return rgdt;
  }

  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }

  public String getPhot() {
    return phot;
  }

  public void setPhot(String phot) {
    this.phot = phot;
  }



}
