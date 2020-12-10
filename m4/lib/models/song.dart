class Song {
  String _albumPhoto;
  String _title;
  String _artist;
  String _audioURL;

  String get albumPhoto => _albumPhoto;

  set albumPhoto(String value) {
    _albumPhoto = value;
  }

  String get title => _title;

  String get audioURL => _audioURL;

  set audioURL(String value) {
    _audioURL = value;
  }

  String get artist => _artist;

  set artist(String value) {
    _artist = value;
  }

  set title(String value) {
    _title = value;
  }

  @override
  String toString() {
    return 'Song{_albumPhoto: $_albumPhoto, _title: $_title, _artist: $_artist, _audioURL: $_audioURL}';
  }
}
