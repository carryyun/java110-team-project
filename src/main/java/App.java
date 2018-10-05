
public class App {

    public String getGreeting() {
        return "Hello world.";
    }
     
   
    public static void main(String[] args) {
        System.out.println(new App().getGreeting());
        System.out.println(new App());
        System.out.println("나도좀치자!!!!!!!!!!!!! !!!!!!!!!!!!");
        wow();
        String s1 = "인생은 ";
        String s2 =s1.concat("선착순");
        System.out.println(s2);
        System.out.println("췍");
    }
    public static void wow() {
        System.out.println("WOW");
        int i=1;
        while(i<=100000) {
            System.out.println(i);
            i++;
        }
        while(i<=100000) {
            System.out.println(i);
            i++;
            App app = new App();
            
        }
        System.out.println("수정");

    }
    
   
}
