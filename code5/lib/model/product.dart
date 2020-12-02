class Product {
  int _id;
  String _name;
  String _imageURL;
  double _price;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  String get imageURL => _imageURL;

  set imageURL(String value) {
    _imageURL = value;
  }

  set name(String value) {
    _name = value;
  }
}
