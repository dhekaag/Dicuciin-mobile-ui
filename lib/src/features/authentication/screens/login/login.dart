import 'package:dicuciin_2/src/constant/colors.dart';
import 'package:dicuciin_2/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:dicuciin_2/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';

import 'login_footer_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Use this check if it's login or register

  //Use this to store user inputs

  // Future signIn() async {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) => const Center(
  //             child: CircularProgressIndicator(),
  //           ));
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: _passwordController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  //   navigatorKey.currentState!.popUntil((route) => route.isFirst);
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: tBackgroundColor,
          body: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.transparent,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LoginHeaderWidget(),
                  SizedBox(height: 40),
                  LoginForm(),
                  SizedBox(height: 35),
                  LoginFooterWidget(),
                ],
              ),
            ),
          )),
    );
  }
}
