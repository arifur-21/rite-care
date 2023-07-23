import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_styles.dart';

class ResueableFilterTextFieldWidget extends StatelessWidget {
  final TextEditingController controllerValue;
  final String hintText;


  ResueableFilterTextFieldWidget({required this.controllerValue, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextFormField(
        controller: controllerValue,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          label: Text(hintText),
          labelStyle: TextStyle(fontFamily: 'IstokWeb',
              fontWeight: FontWeight.w400,
              fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Styles.greyColor),
            borderRadius: BorderRadius.circular(6),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Styles.greyColor),
            borderRadius: BorderRadius.circular(6),
          ),

        ),
      ),
    );
  }
}
