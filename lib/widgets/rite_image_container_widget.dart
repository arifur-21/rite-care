
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

class RiteImageContainerWidet extends StatelessWidget {

  final VoidCallback? onTap;


  RiteImageContainerWidet({ this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icons/rite.png')
            ),
          ),
        ),
        InkWell(
        onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/mobile.png')
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("app_conf".tr, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Styles.textGreen),)
              ],
            ),
          ),
        )
      ],
    );

    /*Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorStyles.primaryColor,
        ),
        child:  Column(
          children: [
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                color: Color(0xFFEFEFEF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),


                ],
              ),
            ),

          ],
        )
    );*/
  }
}
