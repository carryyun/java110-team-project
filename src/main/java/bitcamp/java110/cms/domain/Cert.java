package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Cert {
  private int no;
  private int cno;
  private String memo;
  private String type;
  private int cnt;
  private Date edt;
  private Date ctdt;
  
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
  public String getMemo() {
    return memo;
  }
  public void setMemo(String memo) {
    this.memo = memo;
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
