package bitcamp.java110.cms.domain;

import java.sql.Date;

// 인증서
public class ProductCert {

  private int no; // 인증서번호
  private int cno; // 클래스번호
  private int meno; // 멘티번호
  private String type; // 증서유형
  private int cnt; // 발급횟수
  private Date edt; // 사용가능기한
  private Date ctdt; // 발급일

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getCno() {
    return cno;
  }

  public void setCno(int cno) {
    this.cno = cno;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public int getCnt() {
    return cnt;
  }

  public void setCnt(int cnt) {
    this.cnt = cnt;
  }

  public Date getEdt() {
    return edt;
  }

  public void setEdt(Date edt) {
    this.edt = edt;
  }

  public Date getCtdt() {
    return ctdt;
  }

  public void setCtdt(Date ctdt) {
    this.ctdt = ctdt;
  }



}
