
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_styles.dart';

class ReuseableHeaderContainerWidget extends StatelessWidget {

  final String titleText;
  final String leadingText;
  final String tralingIcon;
  final VoidCallback onTap;

  ReuseableHeaderContainerWidget({required this.titleText, required this.leadingText, required this.tralingIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Styles.primaryColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leadingText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
          Text(titleText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(tralingIcon)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
