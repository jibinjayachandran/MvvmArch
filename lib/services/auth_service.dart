import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:sample_test/config/app.locator.dart';
import 'package:sample_test/data/repository/api_repository.dart';

class AuthService{
  var apiRep = serviceLocator<ApiRepository>();
  final GoogleSignIn googleSignIn = GoogleSignIn();
  String? email;


  signInWithGoogle()async{
   var response = await googleSignIn.signIn();
     log('account info changes==='+response.toString());
      email = response?.email;

  }

}