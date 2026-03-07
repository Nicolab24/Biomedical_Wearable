// ▪ Create a Bus class that extends the Vehicle class and inherit everything from it.
// ▪ Properly inherit the superclass constructors
// ▪ A bus must retain also the current_number_of_passengers and the max_number_of_passengers.
// ▪ Each Bus has a constant max_number_of_passengers equal to 20 and the initial
//   current_number_of_passengers is always 0.
// ▪ Implement a method board that increments the number of passengers by a given value 
//   (as much as possible) and return the new number of passengers.
// ▪ Remember to correctly manage the toString() method.
// ▪ Properly test the created class capabilities in the main function.

import 'Vehicle.dart';

class Bus extends Vehicle{

  // Variables
  final int max_number_of_passengers = 20;
  int current_number_of_passengers = 0;
  
  // Constructor
  Bus({required double max_speed}):super(max_speed: max_speed);
  Bus.used({required double max_speed, required double mileage}):super.used(max_speed: max_speed, mileage: mileage);

  // Method
  int board({required int new_passenger}){
    if ((new_passenger + current_number_of_passengers) > max_number_of_passengers){
      current_number_of_passengers = max_number_of_passengers;
    } else {
      current_number_of_passengers += new_passenger;
    } 
    return current_number_of_passengers;
  }
  @override
  String toString(){
    return 'Bus(is_moving : $is_moving, max_speed: $max_speed, mileage: $mileage, current_number_of_passengers: $current_number_of_passengers, max_number_of_passenger: $max_number_of_passengers)';
  }
}

void main(List<String> args){
  Bus b1 = Bus(max_speed: 100);
  print(b1.board(new_passenger: 10));
  print(b1.board(new_passenger: 25));
  Bus b2 = Bus.used(max_speed: 200, mileage: 1000);
  b2.start();
  print(b2);
  print(b2.board(new_passenger: 15));
  print(b2.addMiles(miles: 2000));
  print(b2);
}