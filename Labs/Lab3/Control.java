package Lab3;

public class Control {
    public static void main(String[] args) {
        int x = 5;
        boolean condition = x > 2;
        int[] numArray = {4,3,2,1};
        System.out.println(x);
        for(int i = 0; i < 4; i++){
            System.out.println(numArray[i]);
        }
        if(condition){
            System.out.println("Condition is true.");
        } else {
            System.out.println("Condition is false.");
        }
        for(int num : numArray) {
            System.out.println(num);
        }
        //To do: Replace x and numArray with a car and an array of cars respectively
    }
}