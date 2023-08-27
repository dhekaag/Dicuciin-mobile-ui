import 'package:dicuciin_2/src/features/authentication/controllers/signup_controller.dart';
import 'package:dicuciin_2/src/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late final TextEditingController _confirmPassword;

  // @override
  // void initState() {
  //   _username = TextEditingController();
  //   _email = TextEditingController();
  //   _phoneNumber = TextEditingController();
  //   _password = TextEditingController();
  //   _confirmPassword = TextEditingController();

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _username.dispose();
  //   _email.dispose();
  //   _phoneNumber.dispose();
  //   _password.dispose();
  //   _confirmPassword.dispose();
  //   super.dispose();
  // }

  // bool secureText = true;
  // showhide() {
  //   setState(() {
  //     secureText = !secureText;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 40, left: 5),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const LoginScreen()));
                        });
                      },
                      icon: const Icon(Icons.arrow_back))),
              const SizedBox(height: 5),
              Container(
                width: 339,
                padding: const EdgeInsets.only(left: 26),
                child: const Text(
                  "Create new account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 30),
                width: 340,
                height: 35,
                child: Text(
                  "Create your account, it takes less than a minute. Enter your username, email and password",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: Text(
                  "Username",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  controller: controller.fullName,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Alexander Magt",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  controller: controller.email,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Alexa.margareth19@gmail.com",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: Text(
                  "Phone No.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  controller: controller.phoneNo,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "+6281311671161",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  controller: controller.password,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.isPasswordHidden.value,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.isPasswordHidden.value =
                                !controller.isPasswordHidden.value;
                          },
                          icon: Icon(controller.isPasswordHidden.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: "********",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: Text(
                  "Confirm password",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  controller: _confirmPassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: controller.isPasswordHidden.value,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.isPasswordHidden.value =
                                !controller.isPasswordHidden.value;
                          },
                          icon: Icon(controller.isPasswordHidden.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: "********",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff62CDFF),
                        Color(0xff009FE9),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    )),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 128),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 15)),
                        onPressed: () {
                          // setState(() {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (_) =>
                          //               const SetupProfileScreen()));
                          // });
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const LoginScreen()));
                        });
                      },
                      child: const Text("Sign in"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
