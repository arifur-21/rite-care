import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../view_model/summery_view_model/summery_view_model.dart';

class EndDateCalendarWidget extends StatefulWidget {


  @override
  State<EndDateCalendarWidget> createState() => _EndDateCalendarWidgetState();

  EndDateCalendarWidget();
}

class _EndDateCalendarWidgetState extends State<EndDateCalendarWidget> {
/////summery
  final summeryVm = Get.put(SummeryViewModel());
  dynamic formattedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(6)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text('${summeryVm.endDate}', style: Styles.poppinsFontBlack12_400),

          InkWell(
              onTap: () async{
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), //get today's date
                  firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101),
                );

                if(pickedDate != null ){
                  print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                  formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                  print(formattedDate); //formatted date output using intl package =>  2022-07-04
                  //You can format date as per your need
                  setState(() {
                    summeryVm.endDate = formattedDate!;//set foratted date to TextField value.
                    print("start ${summeryVm.endDate}");
                  });

                }else{
                  print("Date is not selected");
                }
              },
              child: Image.asset('assets/icons/calendar.png', height: 25, width: 25,)),
        ],
      ),
    );
  }
}
