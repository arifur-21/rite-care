
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_styles.dart';

class ResueableTextFieldPasswordWidget extends StatefulWidget {

  final TextEditingController controllerText;


  ResueableTextFieldPasswordWidget({  required this.controllerText});

  @override
  State<ResueableTextFieldPasswordWidget> createState() => _ResueableTextFieldPasswordWidgetState();
}

class _ResueableTextFieldPasswordWidgetState extends State<ResueableTextFieldPasswordWidget> {
  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    return Container(
      child:  TextFormField(
        controller: widget.controllerText,
        keyboardType: TextInputType.visiblePassword,
        obscureText: ! _passwordVisible,
        validator: (value){
          if(value!.isEmpty || value == null){
            return "Please enter your password";
          }
          else if(value.length <= 6)
          {
            return "Password must be of 6 characters";
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline, color: Styles.primaryColor,),
          suffixIcon: IconButton(
              icon:  Icon(
                // Based on passwordVisible state choose the icon
                _passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Theme.of(context).primaryColorDark,
              ),
            onPressed: () {

            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },

          ),
          
          fillColor: Colors.grey.shade100,
          filled: true,
          label: Text('pass_hint'.tr),
          labelStyle: TextStyle(color: Styles.primaryColor,fontFamily: 'IstokWeb', fontWeight: FontWeight.w700, fontSize: 17),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.primaryColor),
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Styles.primaryColor),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
