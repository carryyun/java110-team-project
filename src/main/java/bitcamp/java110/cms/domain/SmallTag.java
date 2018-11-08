package bitcamp.java110.cms.domain;

// 소분류
public class SmallTag {
  private int no; // 소분류 번호
  private String name; // 소분류 이름
  private int mtno; // MiddleTag의 번호

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getMtno() {
    return mtno;
  }

  public void setMtno(int mtno) {
    this.mtno = mtno;
  }

}
