import 'package:language_picker/languages.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/voice_command_service.dart';

class HomeViewModel extends BaseViewModel {
  final _voiceCommandService = locator<VoiceCommandService>();

  String _selectedLanguage = 'french';

  setSelectedLanguageTo(Language value) {
    _selectedLanguage = value.name;
    notifyListeners();
  }

  activateInterpreterMode() =>
      _voiceCommandService.activateInterpreterMode(language: _selectedLanguage);
}
