

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ritecare_hms/screens/login_screen/send_email_screen.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';


import 'package:ritecare_hms/shere_preference/login_preference.dart';

import '../screens/home_screen.dart';

class SplashServices{

  LoginPreference userPreference = LoginPreference();

  void isLogin(){
    userPreference.getToken().then((value){
      print("splash service ${value.accessToken}");
      if(value?.accessToken?.isEmpty || value.accessToken.toString() == 'null') {
        Get.to(SignInScreen());

      }else{
        Get.to(HomeScreen());
      }
    });

  }

  void enterBaseUrl(){
    userPreference.getSendEmail().then((value){
      print("splash service ${value.sendEamil}");
      if(value?.sendEamil?.isEmpty || value.sendEamil.toString() == 'null') {
        Get.to(SendEmailScreen());

      }else{
        Get.to(SignInScreen());
      }
    });

  }
}