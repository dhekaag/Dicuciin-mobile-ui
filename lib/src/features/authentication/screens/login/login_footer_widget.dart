import 'package:dicuciin_2/src/constant/colors.dart';
import 'package:dicuciin_2/src/features/authentication/screens/explore/explore.dart';
import 'package:dicuciin_2/src/features/authentication/screens/home/home.dart';
import 'package:dicuciin_2/src/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';

import 'login_icon_icons.dart';

class LoginFooterWidget extends StatefulWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  State<LoginFooterWidget> createState() => _LoginFooterWidgetState();
}

class _LoginFooterWidgetState extends State<LoginFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 304,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(colors: [
                    Color(0xff62CDFF),
                    Color(0xff009FE9),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen()));
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.85,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Center(
              child: Text(
            "or",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.black45),
          )),
          const SizedBox(height: 5),
          ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(300, 44),
                  backgroundColor: Colors.black),
              icon: const Icon(LoginIcon.google),
              label: const Text(
                "Continue with Google",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: tHintColor)),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignupScreen()));
                    });
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Color(0xFF009EE8),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
