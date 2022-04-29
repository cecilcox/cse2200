public class IntroObjects {
    public class House {
        public String address;
        public int square_footage;

        //Constructor
        public House(String house_address,int house_square_footage) {
            address = house_address;
            square_footage = house_square_footage;
        }

        public int value() {
            //TODO: Return the value of the house,
            //      calculated as 10000 times its square footage
            return 0;
        }
    }

    public static void main(String[] args){
        h1 = new House("12 Regent Street", 2000 )
        //TODO: Print the value of the house
        System.out.println("The value of the house is ");
    }

}
