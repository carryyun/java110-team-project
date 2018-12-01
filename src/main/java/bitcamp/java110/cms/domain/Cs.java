package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Cs {
  private int no;
  private int meno;
  private String cstype;
  private String titl;
  private String conts;
  private Date rgdt;
  private String anser;
  private Date rgdt2;
  
  private Mentee mentee;
  
  private String mete_nick;
  private String mete_name;
  
  
  
  
  public String getMete_nick() {
    return mete_nick;
  }
  public void setMete_nick(String mete_nick) {
    this.mete_nick = mete_nick;
  }
  public String getMete_name() {
    return mete_name;
  }
  public void setMete_name(String mete_name) {
    this.mete_name = mete_name;
  }
  public Mentee getMentee() {
    return mentee;
  }
  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }
  public int getMeno() {
    return meno;
  }
  public String getCstype() {
    return cstype;
  }
  public void setCstype(String cstype) {
    this.cstype = cstype;
  }
  public void setMeno(int meno) {
    this.meno = meno;
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
  public Date getRgdt() {
    return rgdt;
  }
  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }
  public String getAnser() {
    return anser;
  }
  public void setAnser(String anser) {
    this.anser = anser;
  }
  public Date getRgdt2() {
    return rgdt2;
  }
  public void setRgdt2(Date rgdt2) {
    this.rgdt2 = rgdt2;
  }
  @Override
  public String toString() {
    return "Cs [no=" + no + ", meno=" + meno + ", cstype=" + cstype + ", titl=" + titl + ", conts="
        + conts + ", rgdt=" + rgdt + ", anser=" + anser + ", rgdt2=" + rgdt2 + ", mentee=" + mentee
        + "]";
  }
  
  
 
}