import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../../../../view_model/patient_list_view_model/patient_list_view_model.dart';


class PatientStartDateCalendarWidget extends StatefulWidget {


  @override
  State<PatientStartDateCalendarWidget> createState() => _PatientStartDateCalendarWidgetState();

  PatientStartDateCalendarWidget();
}

class _PatientStartDateCalendarWidgetState extends State<PatientStartDateCalendarWidget> {

  final patientListVM = Get.put(PatientListViewModel());
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

          Text('${patientListVM.startDate}', style: TextStyle(fontSize: 16)),

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
                    patientListVM.categoryId.value = 0;
                    patientListVM.startDate = formattedDate!;//set foratted date to TextField value.
                    print("start date ${patientListVM.startDate}");
                  });

                }else{
                  print("Date is not selected");
                }
              },
              child: Image.asset("assets/icons/calendar.png", width: 30, height: 30,)),
        ],
      ),
    );
  }
}
