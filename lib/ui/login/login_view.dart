import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:sample_test/ui/login/login_viewmodel.dart';
import 'package:sample_test/ui/login/signup_view.dart';
import 'package:stacked/stacked.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ViewModelBuilder<LoginViewModel>.reactive(
        builder: (context,model,child) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.all(10),
              child: DefaultTabController(
                initialIndex: selectedIndex,
                length: 2,
                child: Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        padding: EdgeInsets.all(3),
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          onTap: (index){
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),color: Colors.blue,
                          ),
                          tabs: [Tab(child: Text('Login'),),Tab(child: Text('Sign up'),)],

                        ),
                      ),
                      Expanded(
                        child: TabBarView(

                            children: [LoginForm(),SignupView()]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        margin: EdgeInsets.only(bottom: 50),
                        child: SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () =>model.loginWithGoogle(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }, viewModelBuilder: () =>LoginViewModel(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Text('Login here',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
        const TextField(decoration: InputDecoration(hintText: 'Email id'),),
        const TextField(decoration:  InputDecoration(hintText: 'Password',),obscureText: true,),
        Padding(
          padding: const EdgeInsets.only(top:18.0),
          child: SizedBox(
            height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: (){}, child: const Text('Login'))),
        )
      ],
    );
  }
}

