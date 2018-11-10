package bitcamp.java110.cms.domain;

import java.sql.Date;

// 멘티

public class Mentee {
  protected int no;
  protected String name;
  protected String email;
  protected String pwd;
  protected String pwd2;
  protected String nick;
  protected String phone;
  protected String pstno;
  protected String bas_addr;
  protected String det_addr;
  protected String phot;
  protected char sell;
  protected String bkname;
  protected int bkno;
  protected Date rgdt;
  protected char stat;
  protected String note;

  
  public String getPwd2() {
    return pwd2;
  }

  public void setPwd2(String pwd2) {
    this.pwd2 = pwd2;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

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

  public String getBas_addr() {
    return bas_addr;
  }

  public void setBas_addr(String bas_addr) {
    this.bas_addr = bas_addr;
  }

  public String getDet_addr() {
    return det_addr;
  }

  public void setDet_addr(String det_addr) {
    this.det_addr = det_addr;
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


}
