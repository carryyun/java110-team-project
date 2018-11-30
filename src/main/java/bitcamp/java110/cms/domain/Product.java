package bitcamp.java110.cms.domain;

import java.sql.Date;

// 공예품
public class Product {
  private int no; // 공예품번호
  private String titl; // 제목
  private String conts; // 내용
  private int pric; // 가격
  private Date rgdt; // 등록일
  private int stock; // 재고
  private String phot; // 사진
  private int meno; // 판매자번호
  private int ctno; // 인증서번호
  private int stno; // 소분류번호

  private int deli; // 택배비
  private int star; // 별점
  private Classes classes; // 클래스정보

  private Mentee mentee;
  private ClassRep classRep;
  private Cert cert;
  private SmallTag smalltag;
  private String middleTagName;
  private MiddleTag middletag;
  private BigTag bigTag;
  
  
  public BigTag getBigTag() {
    return bigTag;
  }
  public void setBigTag(BigTag bigTag) {
    this.bigTag = bigTag;
  }

  public ClassRep getClassRep() {
    return classRep;
  }

  public void setClassRep(ClassRep classRep) {
    this.classRep = classRep;

  }

  public String getMiddleTagName() {
    return middleTagName;
  }

  public void setMiddleTagName(String middleTagName) {
    this.middleTagName = middleTagName;
  }

  public Cert getCert() {
    return cert;
  }

  public void setCert(Cert cert) {
    this.cert = cert;
  }

  public SmallTag getSmalltag() {
    return smalltag;
  }

  public void setSmalltag(SmallTag smalltag) {
    this.smalltag = smalltag;
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

  public int getStock() {
    return stock;
  }

  public void setStock(int stock) {
    this.stock = stock;
  }

  public String getPhot() {
    return phot;
  }

  public void setPhot(String phot) {
    this.phot = phot;
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

  public int getStno() {
    return stno;
  }

  public void setStno(int stno) {
    this.stno = stno;
  }

  public int getDeli() {
    return deli;
  }

  public void setDeli(int deli) {
    this.deli = deli;
  }

  public int getStar() {
    return star;
  }

  public void setStar(int star) {
    this.star = star;
  }

  public Classes getClasses() {
    return classes;
  }

  public void setClasses(Classes classes) {
    this.classes = classes;
  }

  public MiddleTag getMiddletag() {
    return middletag;
  }

  public void setMiddletag(MiddleTag middletag) {
    this.middletag = middletag;
  }

  @Override
  public String toString() {
    return "Product [no=" + no + ", titl=" + titl + ", conts=" + conts + ", pric=" + pric
        + ", rgdt=" + rgdt + ", stock=" + stock + ", phot=" + phot + ", meno=" + meno + ", ctno="
        + ctno + ", stno=" + stno + ", deli=" + deli + ", star=" + star + ", classes=" + classes
        + ", mentee=" + mentee + ", classRep=" + classRep + ", cert=" + cert + ", smalltag="
        + smalltag + ", middleTagName=" + middleTagName + ", middletag=" + middletag + "]";
  }


}
