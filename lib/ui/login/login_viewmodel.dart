import 'package:sample_test/config/app.locator.dart';
import 'package:sample_test/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../config/app.router.dart';

class LoginViewModel extends BaseViewModel{
  var authService = serviceLocator<AuthService>();
  var navService = serviceLocator<NavigationService>();

  loginWithGoogle()async{
    await authService.signInWithGoogle();
    navService.replaceWith(Routes.homeView);
  }
}