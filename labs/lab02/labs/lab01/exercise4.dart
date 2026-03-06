String UppercaseMaybe(String s,{bool up = false}){
  if (up) {
    return s.toUpperCase();
    } 
    else {
      return s;
    }

}
void main(List<String> arg) {
String s = 'ciao';
print(UppercaseMaybe(s));
}