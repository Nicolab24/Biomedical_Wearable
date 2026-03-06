import 'dart:math';
String generatePassword(int length) {
  Random rng = Random();
  List<String> outList = [];
  for (int i = 0; i<length; i++) {
    int char = rng.nextInt(94) + 33;
    outList.add(String.fromCharCode(char));

  }
return outList.join(' ');
}
void main(List<String> args) {
  print(generatePassword 12 );
}