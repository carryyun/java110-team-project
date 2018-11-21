package bitcamp.java110.cms.domain;

import java.sql.Date;

// 상품주문내역
public class ProductOrder {

  private int no; // 주문 번호
  private int meno; // 주문자 번호
  private int ptno; // 공예품 번호
  private int cnt; // 수량
  private int tot_pric; // 총금액
  private String payopt; // 결제방법
  private Date paydt; // 날짜시간
  private String parc_name; // 택배사
  private int parc_no; // 송장번호
  
  private Mentee mentee;
  private Product product;
  private String sellernick;
  

  public Mentee getMentee() {
    return mentee;
  }

  public void setMentee(Mentee mentee) {
    this.mentee = mentee;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }

  public String getSellernick() {
    return sellernick;
  }

  public void setSellernick(String sellernick) {
    this.sellernick = sellernick;
  }
  private String stname; // 소분류이름

  private String prdt_titl; // 상품명
  private String mete_nick; // 구매자 닉네임
  private String mete2_nick; // 판매자 닉네임
  private String prdt_pric; // 상품가격

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMeno() {
    return meno;
  }

  public void setMeno(int meno) {
    this.meno = meno;
  }

  public int getPtno() {
    return ptno;
  }

  public void setPtno(int ptno) {
    this.ptno = ptno;
  }

  public int getCnt() {
    return cnt;
  }

  public void setCnt(int cnt) {
    this.cnt = cnt;
  }

  public int getTot_pric() {
    return tot_pric;
  }

  public void setTot_pric(int tot_pric) {
    this.tot_pric = tot_pric;
  }

  public String getPayopt() {
    return payopt;
  }

  public void setPayopt(String payopt) {
    this.payopt = payopt;
  }

  public Date getPaydt() {
    return paydt;
  }

  public void setPaydt(Date paydt) {
    this.paydt = paydt;
  }

  public String getParc_name() {
    return parc_name;
  }

  public void setParc_name(String parc_name) {
    this.parc_name = parc_name;
  }

  public int getParc_no() {
    return parc_no;
  }

  public void setParc_no(int parc_no) {
    this.parc_no = parc_no;
  }

  public String getStname() {
    return stname;
  }

  public void setStname(String stname) {
    this.stname = stname;
  }

  public String getPrdt_titl() {
    return prdt_titl;
  }

  public void setPrdt_titl(String prdt_titl) {
    this.prdt_titl = prdt_titl;
  }

  public String getMete_nick() {
    return mete_nick;
  }

  public void setMete_nick(String mete_nick) {
    this.mete_nick = mete_nick;
  }

  public String getMete2_nick() {
    return mete2_nick;
  }

  public void setMete2_nick(String mete2_nick) {
    this.mete2_nick = mete2_nick;
  }

  public String getPrdt_pric() {
    return prdt_pric;
  }

  public void setPrdt_pric(String prdt_pric) {
    this.prdt_pric = prdt_pric;
  }

  @Override
  public String toString() {
    return "ProductOrder [no=" + no + ", meno=" + meno + ", ptno=" + ptno + ", cnt=" + cnt
        + ", tot_pric=" + tot_pric + ", payopt=" + payopt + ", paydt=" + paydt + ", parc_name="
        + parc_name + ", parc_no=" + parc_no + ", stname=" + stname + ", prdt_titl=" + prdt_titl
        + ", mete_nick=" + mete_nick + ", mete2_nick=" + mete2_nick + ", prdt_pric=" + prdt_pric
        + "]";
  }

}
