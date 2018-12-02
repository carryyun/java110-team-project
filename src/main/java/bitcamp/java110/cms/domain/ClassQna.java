package bitcamp.java110.cms.domain;

import java.sql.Date;

public class ClassQna {

  private int no;
  @Override
  public String toString() {
    return "ClassQna [no=" + no + ", meno=" + meno + ", cno=" + cno + ", titl=" + titl + ", conts="
        + conts + ", rgdt=" + rgdt + ", anser=" + anser + ", rgdt2=" + rgdt2 + ", type=" + type
        + ", mentee=" + mentee + ", classes=" + classes + "]";
  }
  private int meno;
  private int cno;
  private String titl;
  private String conts;
  private Date rgdt;
  private String anser;
  private Date rgdt2;
  private String type;
  
  private Mentee mentee;
  private Classes classes;
  
  private Mentee mentee2;
  private Mentor mentor;
  
  public Mentee getMentee2() {
    return mentee2;
  }
  public void setMentee2(Mentee mentee2) {
    this.mentee2 = mentee2;
  }
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
  public Mentee getMentee() {
    return mentee;
  }
  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }
  public Classes getClasses() {
    return classes;
  }
  public void setClasses(Classes classes) {
    this.classes = classes;
  }
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }
}
