package bitcamp.java110.cms.domain;

// p_prdt_file
public class ProductFile {


  private int no; // 파일번호
  private String pfname; // 파일명
  private int ptno; // 공예품번호

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getPfname() {
    return pfname;
  }

  public void setPfname(String pfname) {
    this.pfname = pfname;
  }

  public int getPtno() {
    return ptno;
  }

  public void setPtno(int ptno) {
    this.ptno = ptno;
  }

  @Override
  public String toString() {
    return "ProductFile [no=" + no + ", pfname=" + pfname + ", ptno=" + ptno + "]";
  }



}
