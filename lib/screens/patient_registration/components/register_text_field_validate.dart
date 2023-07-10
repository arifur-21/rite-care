import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../utils/color_styles.dart';
import '../../../utils/utils.dart';
import '../../../view_model/patient_register_view_model/patient_register_view_model.dart';

class RegisterValidateTextField extends StatelessWidget {
  final registerVM = Get.put(PatientRegisterViewModel());

  final TextEditingController textController;
  final String hintText;
  final String errorText;
  final dynamic number;

  RegisterValidateTextField(
      {required this.textController,
      required this.hintText,
      this.errorText = '',
      this.number});

  final _formKey = GlobalKey<FormState>();
  dynamic value1;
  @override
  Widget build(BuildContext context) {
    print("num111 ${number}");
    return Container(
      child: TextFormField(
        onChanged: (value) async {
          await registerVM.getServiceTypeId(serviceNumber: value);
          print("number $value");
          if (value == number) {
            print("already axist $value");
          }
        },
        controller: textController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          print("$value");
          if (value!.isEmpty || value == null) {
            return "${errorText}";
          }
          if (value == number) {
            print("already axist $value ");
          }

          return null;
        },
        decoration: InputDecoration(
          label: Text(hintText),
          labelStyle: TextStyle(
              color: Styles.primaryColor,
              fontFamily: 'IstokWeb',
              fontWeight: FontWeight.w700,
              fontSize: 17),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.drawerListColor),
            borderRadius: BorderRadius.circular(6),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.drawerListColor),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
