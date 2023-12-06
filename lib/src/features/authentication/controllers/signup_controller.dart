import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

class SignUpController extends GetxController{
    static SignUpController get instance => Get.find();

    // TextField Controllers to get data from TextFields;
    final email = TextEditingController();
    final password = TextEditingController();
    final fullName = TextEditingController();
    final phoneNo = TextEditingController();

    final userRepo = Get.put(UserRepository());

    // Call this Function from Design & it will do the rest
    void registerUser(String email, String password){
        String error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String;
          Get.showSnackbar(GetSnackBar(message: error.toString()));
      }

//     Get phoneNo from user and pass it to Auth Repository for firebase Authentication
    Future<void> createUser(UserModel user) async {
        await userRepo.createUser(user);
        // phoneAuthentication(user.phoneNo);
        // Get.to(() => const OTPScreen());
        registerUser(user.email, user.password);
    }

    void phoneAuthentication(String phoneNo){
        AuthenticationRepository.instance.phoneAuthentication(phoneNo);
    }
}