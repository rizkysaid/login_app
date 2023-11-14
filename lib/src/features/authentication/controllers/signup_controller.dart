import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

class SignUpController extends GetxController{
    static SignUpController get instance => Get.find();

    // TextField Controllers to get data from TextFields;
    final email = TextEditingController();
    final password = TextEditingController();
    final fullName = TextEditingController();
    final phoneNo = TextEditingController();

    // Call this Function from Design & it will do the rest
    void registerUser(String email, String password){
        String error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String;
          Get.showSnackbar(GetSnackBar(message: error.toString()));
      }

//     Get phoneNo from user and pass it to Auth Repository for firebase Authentication
    void phoneAuthentication(String phoneNo){
        AuthenticationRepository.instance.phoneAuthentication(phoneNo);
    }
}