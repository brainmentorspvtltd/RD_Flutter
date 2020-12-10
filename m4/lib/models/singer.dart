class Singer {
  String _name;
  String _photo;

  Singer(this._name, this._photo);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get photo => _photo;

  set photo(String value) {
    _photo = value;
  }

  @override
  String toString() {
    return 'Singer{_name: $_name, _photo: $_photo}';
  }
}
