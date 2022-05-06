package Lab3;

public class Inheritance {
    //To do: Create Taxi and Racecar Classes in separate files

    public static void main(String[] args) {
        //To do: Add a public topSpeed member to the original Car class that is equal
        //to the engine capacity divided by 5

        Car c1 = new Car("toyota", 1000);
        Taxi c2 = new Taxi("levc", 1000);
        Racecar c3 = new Racecar("ferrari", 1000, 300);
        Car[] carArray = {c1,c2,c3};
        for(Car c : carArray) {
            System.out.println(c.topspeed);
        }
    }
}
