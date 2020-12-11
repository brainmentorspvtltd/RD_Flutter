import 'package:audioplayers/audioplayers.dart';

class AudioPlay {
  static Duration totalDuration;
  static Duration currentPosition;
  static Function updateSlider;
  AudioPlay._() {}
  static loadPlayerConfig(Function fn) {
    updateSlider = fn;
    _audioPlayer = AudioPlayer();
    registerListeners();
  }

  static registerListeners() {
    _audioPlayer.onDurationChanged.listen((Duration d) {
      totalDuration = d;
      updateSlider(total: totalDuration, current: currentPosition);
    });
    _audioPlayer.onAudioPositionChanged.listen((Duration d) {
      currentPosition = d;
      updateSlider(total: totalDuration, current: currentPosition);
    });
    _audioPlayer.onPlayerCompletion.listen((event) {});
    //updateSlider(total: totalDuration, current: currentPosition);
  }

  static AudioPlayer _audioPlayer;
  static Future<int> play(String url) {
    return _audioPlayer.play(url);
  }

  static Future<int> pause() {
    return _audioPlayer.pause();
  }

  static Future<int> stop() {
    return _audioPlayer.stop();
  }

  static Future<int> seek(Duration pos) {
    return _audioPlayer.seek(pos);
  }
}
