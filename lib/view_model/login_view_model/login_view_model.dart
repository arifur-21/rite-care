import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/model/login_model/login_token_model.dart';
import 'package:ritecare_hms/screens/home_screen.dart';
import 'package:ritecare_hms/shere_preference/login_preference.dart';
import '../../repository/repository.dart';
import '../../utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = Repository();

  LoginPreference loginPreference = LoginPreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final forgotPassEmail = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;
  RxString errorMsg = ''.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'grant_type': 'password',
      'scope': 'all',
      'username': emailController.value.text,
      'password': passwordController.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      print("access token login ${value}");

      LoginTokenModel loginTokenModel = LoginTokenModel(
          accessToken: value['access_token'],
          refreshToken: value['refresh_token'],
          expiresIn: value['expires_in'],
          tokenType: value['token_type']);

      loginPreference.saveToken(loginTokenModel).then((value) {
        Get.off(HomeScreen());
      }).onError((error, stackTrace) {});
      Utils.snakBar("Login", 'Login successfully');
    }).onError((error, stackTrace) {
      ///errorMsg.value = error.toString();
      loading.value = false;
      print("login error ${error.toString()}");
      if (error == "Request Time out") {
        Utils.snakBarLogin("Error", "Request Time out");
      } else if (error == "No internet") {
        Utils.snakBarLogin("Error", "No internet");
      } else {
        Utils.snakBarLogin(
            "Error", "Please enter a valid username or password!");
      }
    });
  }

  void forgotPassword() {
    print(("forgot pass ${forgotPassEmail.value.text}"));
    loading.value = true;
    Map data = {"userEmail": forgotPassEmail.value.text};

    _api.forgotPassword(data).then((value) {
      //Utils.snakBar("Forgot Password", "Send Email");
      print("forgot ${value}");
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }
}
