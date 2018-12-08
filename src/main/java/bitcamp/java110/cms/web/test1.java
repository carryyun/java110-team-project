package bitcamp.java110.cms.web;

public class test1 {

  public static void main(String[] args) {
    // TODO Auto-generated method stub

    String str1 = "1년  dsfd";
    String str3 = new String(); // str3또한  new String("")과 같다.
    
    
    for(int i = 0 ; i < str1.length(); i ++)
    {    
        if(48 <= str1.charAt(i) && str1.charAt(i) <= 57)
            str3 += str1.charAt(i);
    }
    
    int newCarr = Integer.parseInt(str3);

    System.out.println(newCarr);
  }

}
