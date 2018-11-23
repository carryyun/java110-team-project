package bitcamp.java110.cms.domain;

public class Notice {
  private int no;
  private String type;
  private String conts;
  private int urlno;
  private String url;
  private int meno;
  
  
  private String titl;
  private String phot;
  
  
  public String getConts() {
    return conts;
  }
  public void setConts(String conts) {
    this.conts = conts;
  }
  public String getTitl() {
    return titl;
  }
  public void setTitl(String titl) {
    this.titl = titl;
  }
  public int getMeno() {
    return meno;
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
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }
  public int getUrlno() {
    return urlno;
  }
  public void setUrlno(int urlno) {
    this.urlno = urlno;
  }
  public String getPhot() {
    return phot;
  }
  public void setPhot(String phot) {
    this.phot = phot;
  }
  @Override
  public String toString() {
    return "Notice [no=" + no + ", type=" + type + ", urlno=" + urlno + ", url=" + url + ", meno="
        + meno + ", phot=" + phot + "]";
  }
  
  

}
