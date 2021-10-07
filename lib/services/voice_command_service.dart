import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VoiceCommandService {
  static const platform = MethodChannel('com.interpreter.ga/ga');
  final FlutterTts fluttertts = FlutterTts();

  activateInterpreterMode({required String language}) async {
    try {
      await fluttertts.setVolume(1);
      Future.delayed(
        Duration(seconds: 1),
        () async {
          fluttertts.speak('hey google, will you be my $language interpreter');
        },
      );

      await platform.invokeMethod('beMyInterpreter');
    } catch (e) {
      print(e);
    }
  }
}
