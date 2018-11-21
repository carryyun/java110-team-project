package bitcamp.java110.cms.domain;

import java.sql.Date;

public class Block {
  private int mono;
  private int meno;
  private String resn;
  private Date rgdt;
  
  
  
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
