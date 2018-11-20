package bitcamp.java110.cms.domain;

public class ClassLike {
  private int no;
  private int meno;
  private int cno;
  
  private Classes classes;
  private Mentee mentee;
  private String mentorNick;
  
  
  
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
  public String getMentorNick() {
    return mentorNick;
  }
  public void setMentorNick(String mentorNick) {
    this.mentorNick = mentorNick;
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
}
