package bitcamp.java110.cms.domain;

import java.sql.Date;

// 멘티

public class Mentee {
  protected int no;
  protected String name;
  protected String email;
  protected String pwd;
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
  protected char mtstat;
  protected Date rgdtmt;
  public Classes classes;
  public ClassOrder classorder;
  public Timetable timetable;
  
  
  @Override
  public String toString() {
    return "Mentee [no=" + no + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", nick="
        + nick + ", phone=" + phone + ", pstno=" + pstno + ", bas_addr=" + bas_addr + ", det_addr="
        + det_addr + ", phot=" + phot + ", sell=" + sell + ", bkname=" + bkname + ", bkno=" + bkno
        + ", rgdt=" + rgdt + ", stat=" + stat + ", note=" + note + ", mtstat=" + mtstat
        + ", rgdtmt=" + rgdtmt + ", classes=" + classes + ", classorder=" + classorder
        + ", timetable=" + timetable + "]";
  }
  public Date getRgdtmt() {
    return rgdtmt;
  }
  public void setRgdtmt(Date rgdtmt) {
    this.rgdtmt = rgdtmt;
  }

  

  public Classes getClasses() {
    return classes;
  }

  public void setClasses(Classes classes) {
    this.classes = classes;
  }

  public ClassOrder getClassorder() {
    return classorder;
  }

  public void setClassorder(ClassOrder classorder) {
    this.classorder = classorder;
  }

  public Timetable getTimetable() {
    return timetable;
  }

  public void setTimetable(Timetable timetable) {
    this.timetable = timetable;
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

  public char getMtstat() {
    return mtstat;
  }

  public void setMtstat(char mtstat) {
    this.mtstat = mtstat;
  }
  


}
