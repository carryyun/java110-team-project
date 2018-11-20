package bitcamp.java110.cms.domain;

import java.sql.Date;
import java.sql.Time;

public class Timetable {
  
  private int no;
  private int cno;
  private Date date;
  private Time stime;
  private int capa;
  
  public int getNo() {
    return no;
  }
  public Date getDate() {
    return date;
  }
  public void setDate(Date date) {
    this.date = date;
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
  public Time getStime() {
    return stime;
  }
  public void setStime(Time stime) {
    this.stime = stime;
  }
  public int getCapa() {
    return capa;
  }
  public void setCapa(int capa) {
    this.capa = capa;
  }
  
  
  
}
