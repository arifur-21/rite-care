
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class Utils{
  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
    gravity: ToastGravity.BOTTOM);
        
  }
  static snakBar(String title, String message){
    Get.snackbar(title, message,backgroundColor: Colors.green, colorText: Colors.white, snackPosition: SnackPosition.TOP, duration: Duration(seconds: 5), );
  }

  static snakBarLogin(String title, String message){
    Get.snackbar(title, message,backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.TOP, duration: Duration(seconds: 10), );
  }

}