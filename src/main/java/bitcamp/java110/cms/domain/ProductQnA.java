package bitcamp.java110.cms.domain;

import java.sql.Date;

// 공예품 질문답변
public class ProductQnA {

  private int no; // 댓글 번호
  private int meno; // 작성자 번호
  private int ptno; // 공예품 번호
  private String titl; // 제목
  private String conts; // 내용
  private Date rgdt; // 질문등록일
  private String anser; // 답변
  private Date rgdt2; // 답변등록일
  private String type;
  

  @Override
  public String toString() {
    return "ProductQnA [no=" + no + ", meno=" + meno + ", ptno=" + ptno + ", titl=" + titl
        + ", conts=" + conts + ", rgdt=" + rgdt + ", anser=" + anser + ", rgdt2=" + rgdt2
        + ", type=" + type + "]";
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
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

  public Date getRgdt() {
    return rgdt;
  }

  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }

  public String getAnser() {
    return anser;
  }

  public void setAnser(String anser) {
    this.anser = anser;
  }

  public Date getRgdt2() {
    return rgdt2;
  }

  public void setRgdt2(Date rgdt2) {
    this.rgdt2 = rgdt2;
  }



}
