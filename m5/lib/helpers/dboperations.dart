import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:musicapp_rd/models/song.dart';

class DbOperations {
  static FirebaseFirestore dbReference = FirebaseFirestore.instance;
  DbOperations._() {}

  static Future<String> add(Song song) async {
    CollectionReference collectionReference =
        dbReference.collection('playlist');
    String _albumPhoto;
    String _title;
    String _artist;
    String _audioURL;
    Map<String, dynamic> map = {
      'title': song.title,
      'artist': song.artist,
      'albumphoto': song.albumPhoto,
      'audiourl': song.audioURL
    };
    DocumentReference docRef = await collectionReference.add(map);
    return docRef.id;
  }

  static Future<List<Song>> read() async {
    QuerySnapshot querySnapshot =
        await dbReference.collection('playlist').get();
    List<Song> playList = querySnapshot.docs.map((QueryDocumentSnapshot doc) {
      Song song = new Song();
      song.title = doc['title'];
      song.audioURL = doc['audiourl'];
      song.albumPhoto = doc['albumphoto'];
      song.artist = doc['artist'];
      return song;
    }).toList();
    return playList;
  }
}
