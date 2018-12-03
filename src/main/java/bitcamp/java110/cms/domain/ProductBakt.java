package bitcamp.java110.cms.domain;


// 공예품장바구니
public class ProductBakt {

  private int no; // 장바구니번호
  private int ptno; // 공예품번호
  private int meno; // 멘티번호
  private int cnt;
  private Product product;
  private Mentee mentee;
  private int sum;
  
  

  public int getSum() {
    return sum;
  }

  public void setSum(int sum) {
    this.sum = sum;
  }

  public int getCnt() {
    return cnt;
  }

  public void setCnt(int cnt) {
    this.cnt = cnt;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
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

  public int getPtno() {
    return ptno;
  }

  public void setPtno(int ptno) {
    this.ptno = ptno;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }



}
