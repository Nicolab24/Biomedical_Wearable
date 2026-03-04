String acronym (String s) {
  List<String> pezzi = s.split(' ');
  List<String> letters = [];
  for (String w in pezzi) {
    var c = w.substring(0,1);
    letters.add(c);

  }
  letters = letters.map((e) => e.toUpperCase()).toList();
  String out = '';
  for (String l in letters) {
    out = out + l;
  }
  return out;
}
String toUp(String e) => e.toUpperCase();

void main (List<String> args) {
  String s = 'Portable Document Format';
  print (acronym(s));
}