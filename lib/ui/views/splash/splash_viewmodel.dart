import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../services/app_installed_checker_service.dart';

class SplashViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();
  final _appChecker = locator<AppInstalledCheckerService>();

  checkIfAssistantIsinstalled() async {
    bool isInstalled = await _appChecker.checkIfAssistantAinstalled();
    if (isInstalled) {
      Future.delayed(Duration(seconds: 2), () {
        _navService.replaceWith(Routes.homeView);
      });
    } else {
      Future.delayed(Duration(seconds: 2), () {
        _appChecker.goToPlayStore();
      });
    }
  }
}
