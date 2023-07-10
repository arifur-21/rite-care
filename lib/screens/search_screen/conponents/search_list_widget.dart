
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/color_styles.dart';

class SearchlistWidget extends StatelessWidget {

  final dynamic id;
  final String name;
  final String? relation;
//  final VoidCallback onTap;
  //final bool isSelect = false;


  SearchlistWidget({ required this.id,required this.name,required this.relation});





  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.green,width: 2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                            child: Text(" $id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Styles.drawerListColor),)),
                        SizedBox(width: 30,),

                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name   - ",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Styles.drawerListColor)),
                              SizedBox(height: 10,),
                              Text("Relation -  ",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Styles.drawerListColor)),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("$name",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Styles.drawerListColor)),
                              SizedBox(height: 10,),
                              Text("$relation",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Styles.drawerListColor)),
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
