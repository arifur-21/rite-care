
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_styles.dart';

class LanguageToggleBtnWidget extends StatefulWidget {
  const LanguageToggleBtnWidget({Key? key}) : super(key: key);

  @override
  State<LanguageToggleBtnWidget> createState() => _LanguageToggleBtnWidgetState();
}

class _LanguageToggleBtnWidgetState extends State<LanguageToggleBtnWidget> {
  bool isClick = true;

  @override
  void initState() {
    setState(() {
      isClick = !isClick;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: OutlinedButton(
              onPressed: (){
                setState(() {
                  isClick = !isClick;
                });
                isClick == true ? Get.updateLocale(Locale('en', 'US')): Get.updateLocale(Locale('bn', 'BD'));
              }, child: isClick == true ? Text("বাংলা", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Styles.textGreen),)
              : Text("English",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Styles.textGreen),)
          ),
        ),
      ],
    );
  }
}
