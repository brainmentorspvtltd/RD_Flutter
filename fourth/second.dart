import 'dart:io';

void main() {
  String path = "/Users/amit/Documents/rd-dart/fourth/second.dart";
  File file = File(path);
  print("I am Calling File Read....");
  Future<String> future = file.readAsString();
  print("I am Free....");
  // Anonymous Function
  /*future.then((String data) {
    print("Here Comes the Data $data");
  }).catchError((Error err) {
    print("Error is $err");
  });*/
  // Fat Arrow
  future
      .then((data) => print("Here Comes the Data $data"))
      .catchError((err) => print("Error is $err"));
  //future.then(readIt).catchError(getError);
  print(" Main Ends");
}
/* Function Decleration
void readIt(String data) {
  print("Here Comes the Data $data");
}

void getError(Error err) {
  print("Error is $err");
}
*/
