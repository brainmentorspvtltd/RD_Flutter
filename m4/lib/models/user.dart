class User {
  String _email;
  String _photo;
  String _name;

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get photo => _photo;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  set photo(String value) {
    _photo = value;
  }
}
