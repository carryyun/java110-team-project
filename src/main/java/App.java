
public class App {

    public String getGreeting() {
        return "Hello world.";
    }
    public String 집가자() {
        System.out.println("오늘 집에 못감");
        return "gogo";
    }
    public String 가자() {
        System.out.println("오늘 집에 못감");
        return "gogㅇㅇㅇㅇㅇㅇㅇㅇㅇo";
    }
    public String 자() {
        System.out.println("오늘 집에 못감");
        return "gogo";
    }
    public String 고등어() {
        System.out.println("오늘 집에 못감");
        return "go등어";
    }
    public void 불금(String a , String b) {
        
    }
    public static void main(String[] args) {
        System.out.println(new App().getGreeting());
        int i=1;
        while(i<=100000) {
            System.out.println(i);
            i++;
        }
        while(i<=100000) {
            System.out.println(i);
            i++;
            App app = new App();
            app.자();
        }
        System.out.println("수정");

    }
}
