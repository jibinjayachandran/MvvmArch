import 'package:flutter/material.dart';
import 'package:sample_test/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(child: ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context,model,child) {
          return Text(model.userEmail??'');
        }, viewModelBuilder: () =>HomeViewModel(),
        onModelReady: (model)=>model.onModelReady(),
      ),),
    );
  }
}
