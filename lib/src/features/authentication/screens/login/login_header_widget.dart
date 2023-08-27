import 'package:dicuciin_2/src/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      ClipPath(
        clipper: OvalBottomBorderClipper(),
        child: Container(
          width: size.width,
          height: size.height * 0.40,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ], gradient: tGradient),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18),
                width: size.width * 0.45,
                height: size.height * 0.08,
                child: const Text(
                  "Save your time, Clean your stuff",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: size.height * 0.5,
                width: size.width * 0.45,
                child: const Image(
                    image: AssetImage("assets/images/logoDicuccinRotate.png")),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
