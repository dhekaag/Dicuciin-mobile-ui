import 'package:dicuciin_2/src/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';
import 'login_icon_icons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  //Use this form key to validate user's input
  // final _formKey = GlobalKey<FormState>();

  // final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      // key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              key: const ValueKey("email"),
              controller: controller.email,
              validator: (value) {
                if (value!.isEmpty || !value.contains("@")) {
                  return 'Incorrect email';
                }

                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    LoginIcon.mail,
                    size: 20,
                  ),
                  hintText: "Email address",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black26,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => TextFormField(
                  obscureText: controller.isPasswordHidden.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Incorect Password';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  controller: controller.password,
                  // obscureText: secureText,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        LoginIcon.padlock,
                        size: 20,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.isPasswordHidden.value =
                                !controller.isPasswordHidden.value;
                          },
                          icon: Icon(controller.isPasswordHidden.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black26,
                          fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_box_outline_blank),
                    style: ButtonStyle(
                        iconColor: MaterialStatePropertyAll(tHintColor)),
                    label: Text(
                      "Remember me",
                      style: TextStyle(color: tHintColor),
                    )),
                TextButton(
                    onPressed: () {}, child: const Text("Forgot password?")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
