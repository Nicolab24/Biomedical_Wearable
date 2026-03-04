import 'dart:math';

List <int> Fibonacci(int n) {
  if (n <= 0) return [];
  if (n == 1) return [0];
  List <int> Fibonacciserie = [0,1];
  
  for (int i = 2; i < n; i++) {
    Fibonacciserie.add(Fibonacciserie[i - 1] + Fibonacciserie[i - 2]);
  }
  return Fibonacciserie;

}

void main (List<String> args) {
  Random rng = Random();
  int n = rng.nextInt(20);
  print('Il valore di n è $n');
  print(Fibonacci(n));
  
}