
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expandable_sub_item_lab8.dart';



class ExpandableWidgetLab8 extends StatefulWidget {



  @override
  State<ExpandableWidgetLab8> createState() => _ExpandableWidgetLab8State();
}

class _ExpandableWidgetLab8State extends State<ExpandableWidgetLab8> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index){
              return Card(
                elevation: 5,
                child: ExpansionTile(
                  trailing:Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border(),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Text("Collection", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),))

                  ),
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("12-34-0202",style: TextStyle(fontSize: 16),),
                          Text("1000330",style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  children: [

                    ExpandableSubItemLab8(
                      title: "CBC",
                      category: "Hematoloty",
                      name: "Abdul Ali",
                    ),


                  ],
                ),
              );
            }));
  }
}
