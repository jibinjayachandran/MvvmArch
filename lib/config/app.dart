import 'package:sample_test/data/remote/api_rep_impl.dart';
import 'package:sample_test/data/repository/api_repository.dart';
import 'package:sample_test/services/auth_service.dart';
import 'package:sample_test/ui/login/login_view.dart';
import 'package:sample_test/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../ui/home/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
  ],

  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ApiRepImpl,asType: ApiRepository)
  ],
  logger: StackedLogger(),
  locatorName: 'serviceLocator',
  locatorSetupName: 'setupServiceLocator',
)
class App {

}
