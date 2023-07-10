
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_styles.dart';

class ResuableHeader extends StatelessWidget {

  final String leadingText;
  final String titleText;
  final String tralingText;


  ResuableHeader({required this.leadingText, required this.titleText,required this.tralingText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 8,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Styles.primaryColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(leadingText.toString(), style:  Styles.poppinsFontWhite12_600),
              Text(titleText.toString(), style: Styles.poppinsFontWhite12_600),
              Text(tralingText.toString(), style: Styles.poppinsFontWhite12_600),
            ],
          ),
        ),
      ),

    );
  }
}
