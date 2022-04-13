import 'package:flutter/material.dart';
import 'package:sample_test/config/app.locator.dart';
import 'package:sample_test/config/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends ChangeNotifier{
  final _navService = serviceLocator<NavigationService>();

  onModelReady(BuildContext context){
    Future.delayed(const Duration(seconds: 2),(){
      _navService.replaceWith(Routes.loginView);
    });
  }

}