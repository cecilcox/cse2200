package Lab3;
import java.util.*;

public class ILG {
    public static void main(String[] args){
        String s0 = "Hello";
        String s1 = "Goodbye";
        String s2 = "Hello";
        List<String> lyrics = new ArrayList<String>();
        lyrics.add(s0);
        lyrics.add(s1);
        lyrics.add(s2);
        lyrics.add("Goodbye");
        System.out.println("The song lyrics are: ");
        for(String s : lyrics) {
            System.out.println(s);
        }
        lyrics.remove(0);
        System.out.println("Deleting first line of lyrics");
        System.out.println("The song lyrics are now: ");
        for(String s : lyrics) {
            System.out.println(s);
        }
    }
}
