
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_icon_containter.dart';

class ExpandableSubItemLab8 extends StatefulWidget {

  final IconData? icon1;
  final IconData? icon2;
  final IconData? icon3;
  final IconData? icon4;
  final String? title;
  final String? category;
  final String? name;
  final VoidCallback? onPressed;


  ExpandableSubItemLab8({this.icon1, this.icon2, this.icon3, this.icon4,
      this.title, this.category, this.name, this.onPressed});

  @override
  State<ExpandableSubItemLab8> createState() => _ExpandableSubItemLab8State();
}

class _ExpandableSubItemLab8State extends State<ExpandableSubItemLab8> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 200,
      child:  ListView.separated(
          itemCount: 4,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.title.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(widget.category.toString(),style: TextStyle(fontSize: 16,)),
                      Text(widget.name.toString(),style: TextStyle(fontSize: 16, ))
                    ],),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border(),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("Collection", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),))

                      ),
                      Row(

                        children: [

                        ResuableIconContainer(image: 'assets/icons/resume.png'),
                          SizedBox(width: 10,),
                          ResuableIconContainer(image: 'assets/icons/file.png'),
                          SizedBox(width: 10,),
                          ResuableIconContainer(image: 'assets/icons/check.png'),
                          SizedBox(width: 10,),
                          ResuableIconContainer(image: 'assets/icons/printer.png'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider( thickness: 2,);
      },),
    );
  }
}
