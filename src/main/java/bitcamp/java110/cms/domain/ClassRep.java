package bitcamp.java110.cms.domain;

import java.sql.Date;

public class ClassRep {
  
  private int no;
  private int meno;
  private int cno;
  private String titl;
  private String conts;
  private int star;
  private String phot;
  private Date rgdt;
  
  private Classes classes;
  private Mentee mentee;
  private Mentor mentor;
  
  
  public Mentor getMentor() {
    return mentor;
  }
  public void setMentor(Mentor mentor) {
    this.mentor = mentor;
  }
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
  public int getStar() {
    return star;
  }
  public void setStar(int star) {
    this.star = star;
  }
  public String getPhot() {
    return phot;
  }
  public void setPhot(String phot) {
    this.phot = phot;
  }
  public Date getRgdt() {
    return rgdt;
  }
  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }
  public Classes getClasses() {
    return classes;
  }
  public void setClasses(Classes classes) {
    this.classes = classes;
  }
  public Mentee getMentee() {
    return mentee;
  }
  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }
  
  @Override
  public String toString() {
    return "ClassRep [no=" + no + ", meno=" + meno + ", cno=" + cno + ", titl=" + titl + ", conts="
        + conts + ", star=" + star + ", phot=" + phot + ", rgdt=" + rgdt + ", classes=" + classes
        + ", mentee=" + mentee + ", mentor=" + mentor + "]";
  }
  
  

}
