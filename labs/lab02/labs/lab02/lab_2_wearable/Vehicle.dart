// Create a class Vehicle with max_speed, is_moving and mileage instance variables (properly 
// choose the type of the variables). max_speed is constant. is_moving and milage must be 
// properly initiatilized.
//▪ Create an unnamed constructor with the minimum amount of input arguments.
//▪ Create also a named constructor Vehicle.used that creates a new Vehicle with a given mileage.
//▪ Implement two methods start and stop that properly set is_moving
//▪ Implement also the toString() method of the Vehicle class.
//▪ Create a method addMiles that takes a named parameter miles, adds that value to the current 
//  mileage, and return the new mileage.
//▪ Properly test the created class capabilities in the main function.

import 'dart:math';

class Vehicle {

  // Impostazione delle variabili d'Istanza
  final double max_speed;
  bool is_moving = false;
  double mileage = 0;

  // Constructor
  Vehicle({required this.max_speed});
  Vehicle.used({required this.max_speed, required this.mileage});
  

  // Methods
  void start(){
    is_moving = true;
    print('Il veicolo si sta muovendo');
  }
  void stop(){
    is_moving = false;
    print('Il veicolo è fermo');
  }
  double addMiles({required double miles}){
    mileage = mileage +  miles;
    return mileage;
  }

  @override
  String toString() {
    return 'Vehicle(is_moving : $is_moving, max_speed: $max_speed, mileage: $mileage)';
  }
} 


void main(List<String> args){
  Vehicle v1 = Vehicle(max_speed : 100);
  print(v1);

  Vehicle v2 = Vehicle.used(max_speed: 200, mileage: 100);
  print(v2);

  Random rng = Random();
  double miles = rng.nextInt(100).toDouble();
  print(miles);
  print(v2.addMiles(miles: miles));
  print(v2);

  v1.start();
  print(v2);

  v1.stop();
  print(v2);
}

