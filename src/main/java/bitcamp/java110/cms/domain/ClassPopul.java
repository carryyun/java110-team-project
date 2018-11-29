package bitcamp.java110.cms.domain;

//공예품
public class ClassPopul {
  private int no; // 공예품번호
  private int cno; // 공예품번호
  private Classes classes; // 제목
  private int star;
  private String middleTagName;
  private String nick;
  private String name;
  
  
  public String getNick() {
    return nick;
  }
  public void setNick(String nick) {
    this.nick = nick;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
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
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getCno() {
    return cno;
  }
  public void setCno(int cno) {
    this.cno = cno;
  }
  public Classes getClasses() {
    return classes;
  }
  public void setClasses(Classes classes) {
    this.classes = classes;
  }
  @Override
  public String toString() {
    return "ClassPopul [no=" + no + ", cno=" + cno + ", classes=" + classes + ", star=" + star
        + ", middleTagName=" + middleTagName + ", nick=" + nick + ", name=" + name + "]";
  }
  
  
  
}
