package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Report {
  
  
  private int no;
  private String titl;
  private String conts;
  private String url;
  private String type;
  private Date rtdt;
  private int meno;
  private int meno2;
  
  private String menteeNick;
  private String mentee2Nick;
  
  private int cnt;
  
  @Override
  public String toString() {
    return "Report [no=" + no + ", titl=" + titl + ", conts=" + conts + ", url=" + url + ", type="
        + type + ", rtdt=" + rtdt + ", meno=" + meno + ", meno2=" + meno2 + ", menteeNick="
        + menteeNick + ", mentee2Nick=" + mentee2Nick + ", cnt=" + cnt + "]";
  }
  public int getCnt() {
    return cnt;
  }
  public void setCnt(int cnt) {
    this.cnt = cnt;
  }
  public String getMenteeNick() {
    return menteeNick;
  }
  public void setMenteeNick(String menteeNick) {
    this.menteeNick = menteeNick;
  }
  public String getMentee2Nick() {
    return mentee2Nick;
  }
  public void setMentee2Nick(String mentee2Nick) {
    this.mentee2Nick = mentee2Nick;
  }
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
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }
  public Date getRtdt() {
    return rtdt;
  }
  public void setRtdt(Date rtdt) {
    this.rtdt = rtdt;
  }
  public int getMeno2() {
    return meno2;
  }
  public void setMeno2(int meno2) {
    this.meno2 = meno2;
  }
  public int getMeno() {
    return meno;
  }
  public void setMeno(int meno) {
    this.meno = meno;
  }
  
  
  

}