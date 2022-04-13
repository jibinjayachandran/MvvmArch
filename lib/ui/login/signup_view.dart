import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: const Text('Sign up here',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
          const TextField(decoration: InputDecoration(hintText: 'Email id'),),
          const TextField(decoration:  InputDecoration(hintText: 'Password',),obscureText: true,),
          const TextField(decoration:  InputDecoration(hintText: 'Confirm password',),obscureText: true,),
          Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: SizedBox(
              height: 48,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){}, child: const Text('Sign up'))),
          )
        ],
      ),
    );
  }
}
