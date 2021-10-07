import 'package:device_apps/device_apps.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInstalledCheckerService {
  Future<bool> checkIfAssistantAinstalled() async {
    bool isInstalled = await DeviceApps.isAppInstalled(
        'com.google.android.googlequicksearchbox');
    return isInstalled;
  }

  goToPlayStore() async {
    await launch(
        'https://play.google.com/store/apps/details?id=com.google.android.googlequicksearchbox&hl=en&gl=US');
  }
}
