void main() {
  List<int> list = [10, 20, 30, 10, 1, 20, 90];

  bool result = list.every((element) => element > 0);
  print(result ? 'Every True' : 'Every False');
  print(list.any((element) => element > 20) ? 'Any True' : 'Any False');
  Iterable<int> i = list.skipWhile((value) => value > 1);
  i.forEach((element) => print(element));
  //int sum = 0;
  /*for(int i = 0 ; i<list.length; i++){
    sum += list[i];
  }
  print(sum);
  */
  /*
  for(int i in list){
    sum += i;
  }
  print(sum);
  */
  //int sum = list.fold(0, (acc, currentValue) => acc + currentValue);
  int sum = list.fold(0, (acc, currentValue) {
    print('ACC is $acc and CurrentValue is $currentValue');
    return acc + currentValue;
  });
  print(sum);
}
