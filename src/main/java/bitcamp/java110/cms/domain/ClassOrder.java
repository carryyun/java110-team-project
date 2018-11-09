package bitcamp.java110.cms.domain;

import java.sql.Date;

public class ClassOrder {
  
  private int no;
  private int meno;
  private int time;
  private int totPric;
  private String payopt;
  private Date paydt;
  private int ctno;
  
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
  public int getTime() {
    return time;
  }
  public void setTime(int time) {
    this.time = time;
  }
  public int getTotPric() {
    return totPric;
  }
  public void setTotPric(int totPric) {
    this.totPric = totPric;
  }
  public String getPayopt() {
    return payopt;
  }
  public void setPayopt(String payopt) {
    this.payopt = payopt;
  }
  public Date getPaydt() {
    return paydt;
  }
  public void setPaydt(Date paydt) {
    this.paydt = paydt;
  }
  public int getCtno() {
    return ctno;
  }
  public void setCtno(int ctno) {
    this.ctno = ctno;
  }
}
