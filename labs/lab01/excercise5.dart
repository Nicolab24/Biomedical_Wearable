import 'dart:math';

void main(List<String> args) {
  Random rng = Random();
  int n = rng.nextInt(30);
  print(n);
  if(n.isEven) {
    print('$n è pari');
  } else if (n >= 2 && n <= 5) {
    print ('$n è Small even');
  } else if (n >= 6 && n <= 20) {
    print('$n è Medium even');
  } else if (n > 20) {
    print('$n è Big even');
  } else {
    print("Don't know");
  }
}
