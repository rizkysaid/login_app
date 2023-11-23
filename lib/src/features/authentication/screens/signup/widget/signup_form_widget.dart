import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  label: Text(fullName),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                ),
              ),
              const SizedBox(height: formHeight - 20),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  label: Text(email),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: formHeight - 20),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text(phoneNo),
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
              const SizedBox(height: formHeight - 20),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  label: Text(password),
                  prefixIcon: Icon(Icons.fingerprint),
                ),
              ),
              const SizedBox(height: formHeight - 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // // SIGN UP WITH EMAIL
                      // SignUpController.instance.registerUser(
                      //   controller.email.text.trim(),
                      //   controller.password.text.trim(),
                      // );
                      // // SIGN UP WITH EMAIL

                      // // SIGN UP WITH PHONE NUMBER
                      // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                      // Get.to(() => const OTPScreen());
                      // // SIGN UP WITH PHONE NUMBER


                      /*
                        ============
                        Todo: Step - 3 [Get User and Pass it to Controller]
                        ============
                       */

                      final user = UserModel(
                          email: controller.email.text.trim(),
                          fullName: controller.fullName.text.trim(),
                          phoneNo: controller.phoneNo.text.trim(),
                          password: controller.password.text.trim()
                      );
                      SignUpController.instance.createUser(user);
                    }
                  },
                  child: Text(signup.toUpperCase()),
                ),
              )
            ],
          )),
    );
  }
}
