import 'package:my_interpreter/services/app_installed_checker_service.dart';
import 'package:my_interpreter/services/voice_command_service.dart';
import 'package:my_interpreter/ui/views/home/home_view.dart';
import 'package:my_interpreter/ui/views/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: HomeView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: VoiceCommandService),
  LazySingleton(classType: AppInstalledCheckerService),
])
class App {}
