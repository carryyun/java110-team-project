package bitcamp.java110.cms.domain;

import java.sql.Date;
import java.sql.Time;

public class ClassOrder {

  private int no;
  private int meno;
  private int time;
  private int tot_pric;
  private String payopt;
  private Date paydt;
  private int ctno;
  
  private Mentee mentee;
  private Mentor mentor;
  private Classes classes;
  private Timetable timetable;
  private Cert cert;
  private ClassFile classFile;
  

  private String mentornick;
  
  private String mtname; // 중분류이름
  private String cls_titl; // 클래스명
  private String mete_nick; // 구매자 닉네임
  private String mete2_nick; // 판매자 닉네임
  private int cls_pric; // 클래스가격
  private String mete_name;
  private String mete2_name;
  private String mete2_phone;
  private Date date;
  private Time stime;
  
    
  
  public String getMete2_phone() {
    return mete2_phone;
  }
  public void setMete2_phone(String mete2_phone) {
    this.mete2_phone = mete2_phone;
  }
  public String getMete_name() {
    return mete_name;
  }
  public void setMete_name(String mete_name) {
    this.mete_name = mete_name;
  }
  public String getMete2_name() {
    return mete2_name;
  }
  public void setMete2_name(String mete2_name) {
    this.mete2_name = mete2_name;
  }
  public Date getDate() {
    return date;
  }
  public void setDate(Date date) {
    this.date = date;
  }
  public Time getStime() {
    return stime;
  }
  public void setStime(Time stime) {
    this.stime = stime;
  }
  public ClassFile getClassFile() {
    return classFile;
  }
  public void setClassFile(ClassFile classFile) {
    this.classFile = classFile;
  }
  public Cert getCert() {
    return cert;
  }
  public void setCert(Cert cert) {
    this.cert = cert;
  }

  public String getMentornick() {
    return mentornick;
  }
  public void setMentornick(String mentornick) {
    this.mentornick = mentornick;
  }
  public Mentee getMentee() {
    return mentee;
  }
  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }
  public Mentor getMentor() {
    return mentor;
  }
  public void setMentor(Mentor mentor) {
    this.mentor = mentor;
  }
  public Classes getClasses() {
    return classes;
  }
  public void setClasses(Classes classes) {
    this.classes = classes;
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

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public int getTime() {
    return time;
  }

  public void setTime(int time) {
    this.time = time;
  }

  public int getTot_pric() {
    return tot_pric;
  }

  public void setTot_pric(int tot_pric) {
    this.tot_pric = tot_pric;
  }

  public String getPayopt() {
    return payopt;
  }

  public void setPayopt(String payopt) {
    this.payopt = payopt;
  }

  public Date getPaydt() {
    return paydt;
  }

  public void setPaydt(Date paydt) {
    this.paydt = paydt;
  }

  public int getCtno() {
    return ctno;
  }

  public void setCtno(int ctno) {
    this.ctno = ctno;
  }

  public String getMtname() {
    return mtname;
  }

  public void setMtname(String mtname) {
    this.mtname = mtname;
  }

  public String getCls_titl() {
    return cls_titl;
  }

  public void setCls_titl(String cls_titl) {
    this.cls_titl = cls_titl;
  }

  public String getMete_nick() {
    return mete_nick;
  }

  public void setMete_nick(String mete_nick) {
    this.mete_nick = mete_nick;
  }

  public String getMete2_nick() {
    return mete2_nick;
  }

  public void setMete2_nick(String mete2_nick) {
    this.mete2_nick = mete2_nick;
  }

  public int getCls_pric() {
    return cls_pric;
  }

  public void setCls_pric(int cls_pric) {
    this.cls_pric = cls_pric;
  }



}
