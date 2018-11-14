package bitcamp.java110.cms.domain;

//공예품
public class ProductPopul {
  private int no; // 공예품번호
  private int ptno; // 공예품번호
  private Product product; // 제목
  
  
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
