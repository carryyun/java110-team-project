package bitcamp.java110.cms.domain;

//공예품
public class ProductPopul {
  private int no; // 공예품번호
  private int ptno; // 공예품번호
  private Product product; // 제목
  private int star;
  private String middleTagName;
  private String smallTagName;
  
  
  public String getSmallTagName() {
    return smallTagName;
  }
  public void setSmallTagName(String smallTagName) {
    this.smallTagName = smallTagName;
  }
  public String getMiddleTagName() {
    return middleTagName;
  }
  public void setMiddleTagName(String middleTagName) {
    this.middleTagName = middleTagName;
  }
  public int getStar() {
    return star;
  }
  public void setStar(int star) {
    this.star = star;
  }
  public int getPtno() {
    return ptno;
  }
  public void setPtno(int ptno) {
    this.ptno = ptno;
  }
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
}
