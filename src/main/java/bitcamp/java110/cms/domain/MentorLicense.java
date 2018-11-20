package bitcamp.java110.cms.domain;

public class MentorLicense {
  
  
  private int no;
  private String lname;
  private String phot;
  private int mono;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getLname() {
    return lname;
  }
  public void setLname(String lname) {
    this.lname = lname;
  }
  public String getPhot() {
    return phot;
  }
  public void setPhot(String phot) {
    this.phot = phot;
  }
  public int getMono() {
    return mono;
  }
  public void setMono(int mono) {
    this.mono = mono;
  }
  @Override
  public String toString() {
    return "MentorLicense [no=" + no + ", lname=" + lname + ", phot=" + phot + ", mono=" + mono
        + "]";
  }
}
