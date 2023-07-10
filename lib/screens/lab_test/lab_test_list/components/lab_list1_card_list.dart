import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../lab_test_list_details.dart';


class LabList1CardList extends StatelessWidget {

  String? title;
  String? code;
  String? category;
  double? price;
  VoidCallback onTap;



  LabList1CardList({required this.title,required this.code,required this.category,required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border:  Border.all(width: 1, color: Styles.primaryColor)
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(title.toString(),style: Styles.poppinsFontBlack12_400)),
                            Expanded(
                                flex: 1,
                                child: Text(code.toString(), style: Styles.poppinsFontBlack12_400)),
                            Text(category.toString(),style: Styles.poppinsFontBlack12_400)
                    ],))

                  ],
                ),

                SizedBox(height: 10,),
                Divider(height: 1, color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(category??''),
                        SizedBox(width: 10,),

                        Text("Price :",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.green)),
                        SizedBox(width: 10,),
                        Text(price.toString(),style: Styles.poppinsFontBlack12_400),
                        SizedBox(width: 50,),

                      ],
                    ),
                    InkWell(
                        onTap: onTap,
                        child: Icon(Icons.note_outlined,size: 25,color: Styles.primaryColor,))
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );

  }
}
