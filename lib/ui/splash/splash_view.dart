import 'package:flutter/material.dart';
import 'package:sample_test/ui/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: () =>SplashViewModel(),
      onModelReady: (model)=>model.onModelReady(context),
      builder: (BuildContext context, SplashViewModel model, Widget? child)=>Scaffold(body: Center(child: Icon(Icons.start),)),
    );
  }
}
