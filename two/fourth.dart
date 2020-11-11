void main() {
  Set<String> songs = {"Bang Bang", "Boom Boom", "Bang Bang"};
  print(songs);
  print(songs.length);
  print(songs.first);
  print(songs.last);
  songs.add("It's My Life");
  //songs.clear();
  bool r = songs.contains("Bang Bang");
  Set<int> one = {1, 2, 3, 4, 5};
  Set<int> two = {1, 10, 100, 4, 5};
  print(one.difference(two));
  print(two.difference(one));
  print(one.intersection(two));
  print(one.union(two));
  Iterator<String> itr = songs.iterator;
  while (itr.moveNext()) {
    print(itr.current);
  }
  for (String song in songs) {
    print(song);
  }
}
