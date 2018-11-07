package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Mentee   {
  private int no;
  private String name;
  private String email;
  private String pwd;
  private String nick;
  private String phone;
  private String pstno;
  private String basAddr;
  private String detAddr;
  private String phot;
  private char sell;
  private String bkname;
  private int bkno;
  private Date rgdt;
  private char stat;
  private String note;
  
  
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPwd() {
    return pwd;
  }
  public void setPwd(String pwd) {
    this.pwd = pwd;
  }
  public String getNick() {
    return nick;
  }
  public void setNick(String nick) {
    this.nick = nick;
  }
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }
  public String getPstno() {
    return pstno;
  }
  public void setPstno(String pstno) {
    this.pstno = pstno;
  }
  
  public String getPhot() {
    return phot;
  }
  public void setPhot(String phot) {
    this.phot = phot;
  }
  public char getSell() {
    return sell;
  }
  public void setSell(char sell) {
    this.sell = sell;
  }
  public Date getRgdt() {
    return rgdt;
  }
  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }
  public char getStat() {
    return stat;
  }
  public void setStat(char stat) {
    this.stat = stat;
  }
  public String getNote() {
    return note;
  }
  public void setNote(String note) {
    this.note = note;
  }
  public String getBkname() {
    return bkname;
  }
  public void setBkname(String bkname) {
    this.bkname = bkname;
  }
  public int getBkno() {
    return bkno;
  }
  public void setBkno(int bkno) {
    this.bkno = bkno;
  }
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getBasAddr() {
    return basAddr;
  }
  public void setBasAddr(String basAddr) {
    this.basAddr = basAddr;
  }
  public String getDetAddr() {
    return detAddr;
  }
  public void setDetAddr(String detAddr) {
    this.detAddr = detAddr;
  }
}
