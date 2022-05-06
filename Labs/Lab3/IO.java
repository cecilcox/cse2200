package Lab3;
import java.util.Scanner;

public class IO {
    public static void main(String[] args){
        Scanner input_scanner = new Scanner(System.in);
        System.out.println("Please enter your name.");
        String user_name = input_scanner.nextLine();
        System.out.println("Hello " + user_name);
        //To do: Get Integer and Boolean Input from user
    }
}
