
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_styles.dart';

class ResuableTextField extends StatelessWidget {

  final TextEditingController controllerValue;
  final IconData? icon;
  final String hintText;
  final VoidCallback? onTap;
  final String? errorMsg;


  ResuableTextField({required this.controllerValue,  this.icon, required this.hintText, this.onTap, this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerValue,
        onChanged: (value){

        },
        validator: (value){
        if(value!.isEmpty || value == null){
          return errorMsg;
        }
        },
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onTap,
              child: Icon(icon, color: Styles.primaryColor,size: 20,)),
          fillColor: Colors.grey.shade100,
          filled: true,
          label: Text(hintText),
          labelStyle: TextStyle(color: Styles.primaryColor,fontFamily: 'IstokWeb', fontWeight: FontWeight.w400, fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.primaryColor),
            borderRadius: BorderRadius.circular(6),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.primaryColor),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
    );
  }
}
