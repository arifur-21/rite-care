
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResuableIconContainer extends StatelessWidget {

  final String image;


  ResuableIconContainer({required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
          ),
        ),
      ),
    );
  }
}
