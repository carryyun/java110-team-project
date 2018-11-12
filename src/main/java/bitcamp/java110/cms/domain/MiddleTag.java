package bitcamp.java110.cms.domain;

// 중분류
public class MiddleTag {
  private int no;
  private String name;
  private int btno; // BigTag의 no이다.
  
  private BigTag bigTag;

  
  
  public BigTag getBigTag() {
    return bigTag;
  }

  public void setBigTag(BigTag bigTag) {
    this.bigTag = bigTag;
  }

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

  public int getBtno() {
    return btno;
  }

  public void setBtno(int btno) {
    this.btno = btno;
  }



}
