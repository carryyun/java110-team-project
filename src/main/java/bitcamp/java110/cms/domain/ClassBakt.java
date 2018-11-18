package bitcamp.java110.cms.domain;

public class ClassBakt {
  private int no;
  private int meno;
  private int ctno;
  private Classes classes;
  private Mentee mentee;
  private Timetable timetable;
  
  private String mentorNick;
  
  
  public String getMentorNick() {
    return mentorNick;
  }
  public void setMentorNick(String mentorNick) {
    this.mentorNick = mentorNick;
  }
  public Timetable getTimetable() {
    return timetable;
  }
  public void setTimetable(Timetable timetable) {
    this.timetable = timetable;
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
  public int getCtno() {
    return ctno;
  }
  public void setCtno(int ctno) {
    this.ctno = ctno;
  }
}
