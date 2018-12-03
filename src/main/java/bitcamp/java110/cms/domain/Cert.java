package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Cert {
  private int no;
  private int cno;
  private int meno;
  private String type;
  private int cnt;
  private Date edt;
  private Date ctdt;
  private Classes classes;
  private Mentee mentee;

  

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

  public Classes getClasses() {
    return classes;
  }

  public void setClasses(Classes classes) {
    this.classes = classes;
  }


}
