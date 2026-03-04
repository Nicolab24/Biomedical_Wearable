import 'dart:math';

void main (List<String> args) {
  Random rng = Random();
  int n = rng.nextInt(200);
  print (n);
  String nstr = n.toString();
  int length = nstr.length;
  int sum = 0;

  for (var i=0; i<length; i++) {
    sum += pow(int.parse(nstr[i]),length) as int;
    }

  if (sum == n) {
    print('$n è un numero Armstrong');
  } else {
    print('$n non è un numero Armstrong');
  }

  
}