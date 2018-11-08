package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Classes extends Mentor{
  
  private int cno;
  private String titl;
  private String conts;
  private String time;
  private String capa;
  private String cfile;
  private String tinfo;
  private String cinfo;
  private Date edt;
  // 중분류번호 상속 받아야됨

  public int getCno() {
    return cno;
  }
  public void setCno(int cno) {
    this.cno = cno;
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
  public String getTime() {
    return time;
  }
  public void setTime(String time) {
    this.time = time;
  }
  public String getCapa() {
    return capa;
  }
  public void setCapa(String capa) {
    this.capa = capa;
  }
  public String getCfile() {
    return cfile;
  }
  public void setCfile(String cfile) {
    this.cfile = cfile;
  }
  public String getTinfo() {
    return tinfo;
  }
  public void setTinfo(String tinfo) {
    this.tinfo = tinfo;
  }
  public String getCinfo() {
    return cinfo;
  }
  public void setCinfo(String cinfo) {
    this.cinfo = cinfo;
  }
  public Date getEdt() {
    return edt;
  }
  public void setEdt(Date edt) {
    this.edt = edt;
  }
}
