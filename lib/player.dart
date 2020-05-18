import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Player {
  AudioPlayer advancedPlayer = new AudioPlayer();
  AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);
}