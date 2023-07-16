import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pageFour.dart';
import '../pageOne.dart';
import '../pageThree.dart';
import '../pageTwo.dart';
import '../../../utils/color_styles.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {

  int _currentIndex = 0;
  List<Widget>bodyItems = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyItems[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded, color: Colors.white,),
              backgroundColor: Styles.primaryColor,
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.query_builder_sharp, color: Colors.white),
              backgroundColor: Styles.primaryColor,
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.white,),
              backgroundColor: Styles.primaryColor,
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.white,),
              backgroundColor: Styles.primaryColor,
              label: ""
          )

        ],

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Styles.primaryColor,
        elevation: 5,

      ) ,
    );


  }
}
