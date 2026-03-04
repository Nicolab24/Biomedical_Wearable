bool isPalindrome(String s) {
  bool flag = true;
  for (int i = 0; i < s.length/ 2; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      flag = false;
      break;
    }
  }
  return flag;
}
void main (List<String> args) {
  String s = "alba";
  print(isPalindrome(s));
  
}