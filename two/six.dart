class Song {
  Set<String> artistName;
  String songName;
  List<double> price;
}

class Temp {
  String cityName;
  int tempValue;
  Temp(String cityName, int tempValue) {
    this.tempValue = tempValue;
    this.cityName = cityName;
  }
}

void main() {
  Map<String, Temp> map2 = {
    "India": Temp("Delhi", 27),
    "Singapore": Temp("Delhi", 31)
  };
  print(map2["India"].cityName);

  //Set<Song> song = {};
  List<int> temp = [30, 21, 35, 38, 32, 33, 35, 22, 31, 27, 23];
  //temp[0];
  //temp[1];
  Map<String, int> temp1 = {"delhi": 30, "shimla": 21, "mumbai": 32};
  print(temp1["delhi"]);
  temp1["delhi"] = 27;
  temp1.remove("delhi");
}
