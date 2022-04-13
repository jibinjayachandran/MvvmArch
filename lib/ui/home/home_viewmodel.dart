import 'package:stacked/stacked.dart';

import '../../config/app.locator.dart';
import '../../services/auth_service.dart';

class HomeViewModel extends BaseViewModel{
  var authService = serviceLocator<AuthService>();
  String? userEmail;

  onModelReady(){
    userEmail = authService.email;
    notifyListeners();
  }

}