package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Classes {
  
  private int no;
  private String titl;
  private String conts;
  private int pric;
  private Date rgdt;
  private String time;
  private int capa;
  private String cfile;
  private String tinfo;
  private String cinfo;
  private String pstno;
  private String basAddr;
  private String detAddr;
  private Date edt;
  private int mono;
  private int mtno;
  private int star;
  private String stat;
  
  private Mentee mentee;
  private MiddleTag middleTag;
  private BigTag bigTag;
  private Mentor mentor;
  private ClassFile classFile;
  private ClassLike classLike;

  
  @Override
  public String toString() {
    return "Classes [no=" + no + ", titl=" + titl + ", conts=" + conts + ", pric=" + pric
        + ", rgdt=" + rgdt + ", time=" + time + ", capa=" + capa + ", cfile=" + cfile + ", tinfo="
        + tinfo + ", cinfo=" + cinfo + ", pstno=" + pstno + ", basAddr=" + basAddr + ", detAddr="
        + detAddr + ", edt=" + edt + ", mono=" + mono + ", mtno=" + mtno + ", star=" + star
        + ", stat=" + stat + ", mentee=" + mentee + ", middleTag=" + middleTag + ", bigTag="
        + bigTag + ", mentor=" + mentor + ", classFile=" + classFile + ", classLike=" + classLike
        + "]";
  }

  public BigTag getBigTag() {
    return bigTag;
  }

  public void setBigTag(BigTag bigTag) {
    this.bigTag = bigTag;
  }

  public String getStat() {
    return stat;
  }

  public void setStat(String stat) {
    this.stat = stat;
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

  public int getPric() {
    return pric;
  }

  public void setPric(int pric) {
    this.pric = pric;
  }

  public Date getRgdt() {
    return rgdt;
  }

  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }

  public String getTime() {
    return time;
  }

  public void setTime(String time) {
    this.time = time;
  }

  public int getCapa() {
    return capa;
  }

  public void setCapa(int capa) {
    this.capa = capa;
  }

  public String getCfile() {
    return cfile;
  }

  public void setCfile(String cfile) {
    this.cfile = cfile;
  }

  public String getTinfo() {
    return tinfo;
  }

  public void setTinfo(String tinfo) {
    this.tinfo = tinfo;
  }

  public String getCinfo() {
    return cinfo;
  }

  public void setCinfo(String cinfo) {
    this.cinfo = cinfo;
  }

  public String getPstno() {
    return pstno;
  }

  public void setPstno(String pstno) {
    this.pstno = pstno;
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

  public Date getEdt() {
    return edt;
  }

  public void setEdt(Date edt) {
    this.edt = edt;
  }

  public int getMono() {
    return mono;
  }

  public void setMono(int mono) {
    this.mono = mono;
  }

  public int getMtno() {
    return mtno;
  }

  public void setMtno(int mtno) {
    this.mtno = mtno;
  }

  public int getStar() {
    return star;
  }

  public void setStar(int star) {
    this.star = star;
  }

  public Mentee getMentee() {
    return mentee;
  }

  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }

  public MiddleTag getMiddleTag() {
    return middleTag;
  }

  public void setMiddleTag(MiddleTag middleTag) {
    this.middleTag = middleTag;
  }

  public Mentor getMentor() {
    return mentor;
  }

  public void setMentor(Mentor mentor) {
    this.mentor = mentor;
  }

  public ClassFile getClassFile() {
    return classFile;
  }

  public void setClassFile(ClassFile classFile) {
    this.classFile = classFile;
  }

  public ClassLike getClassLike() {
    return classLike;
  }

  public void setClassLike(ClassLike classLike) {
    this.classLike = classLike;
  }
  
  
}
