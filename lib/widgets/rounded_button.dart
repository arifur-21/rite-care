
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../utils/app_layout.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  final bool loading;
  final double width;


  RoundedButton({required this.title, required this.color, required this.onTap, this.loading = false, this.width = 100});

  @override
  Widget build(BuildContext context) {

    return  InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Center(
            child: loading? Center(child: CircularProgressIndicator(),) :
            Text(title,style: Styles.btnTextColor)),
      ),
    );
  }
}
