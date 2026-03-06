
void main(List<String> args) {
  var list = [2,4,6,8,10]; 
  final mappedList = list.map((element){
    return element*2;
  });
  print('$mappedList');
}