
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

class ProfileUserDataViewWidget extends StatelessWidget {


  final String title;
  final String information;



  ProfileUserDataViewWidget({ required this.title, required this.information});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Row(
                              children: [Text(title, style: TextStyle(fontWeight: FontWeight.w500, color: Styles.textGreen, fontSize: 14),),],)),
                        Expanded(flex: 1, child: Row(
                          children: [
                            Text(":",style: TextStyle( color: Styles.textGreen,fontSize: 14, fontWeight: FontWeight.bold),),
                          ],
                        )),

                        Expanded(
                            flex: 5,
                            child: Text("${information}",style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14)))
                      ],),
                  ))

            ],
          ),
        ),
      ],
    );
  }
}
