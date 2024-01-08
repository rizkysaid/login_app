import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  /// Repositories
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  /// Get User Email and pass to UserRepository to fetch user record
  getUserData(){
    final email = _authRepo.firebaseUser.value!.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    }else{
      Get.snackbar("Error", "Login to continue");
    }
  }

  /// Fetch List of user records.
  Future<List<UserModel>> getAllUsers() async => await _userRepo.allUser();

  Future<void> updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}