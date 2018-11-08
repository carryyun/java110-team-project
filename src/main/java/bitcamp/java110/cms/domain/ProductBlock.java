package bitcamp.java110.cms.domain;

import java.sql.Date;

// 인증서
public class ProductBlock {

  private int mono; // 멘토번호
  private int meno; // 멘티번호
  private String resn; // 사유
  private Date rgdt; // 등록일

  public int getMono() {
    return mono;
  }

  public void setMono(int mono) {
    this.mono = mono;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public String getResn() {
    return resn;
  }

  public void setResn(String resn) {
    this.resn = resn;
  }

  public Date getRgdt() {
    return rgdt;
  }

  public void setRgdt(Date rgdt) {
    this.rgdt = rgdt;
  }



}
