
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../function/function_class.dart';
import '../../../../utils/color_styles.dart';
import '../../patient_info/patien_info_screen.dart';
import 'package:intl/intl.dart';



class PatientCartListViewWidgets extends StatefulWidget {

  final dynamic patientId;
  final String PatientName;
  dynamic DateOfBirth = "/Date(1681754400000)/";
  final VoidCallback onTap;

 
  
  PatientCartListViewWidgets({required this.patientId, required this.PatientName, required this.DateOfBirth, required this.onTap});

  @override
  State<PatientCartListViewWidgets> createState() => _PatientCartListViewWidgetsState();
}

class _PatientCartListViewWidgetsState extends State<PatientCartListViewWidgets> {

  dynamic? dateTime = " ";

/*
 dateOfTiem(){

   dynamic dobs;
   dobs = widget.DateOfBirth;
if(dobs == null){
  return "";
}else {
  dynamic unixTimestamp = dobs;
  int timestampInMilliseconds = int.parse(
      unixTimestamp.replaceAll(RegExp(r'[^0-9]'), '') ?? ""); // extract the numeric value from the string
  dateTime = DateTime.fromMillisecondsSinceEpoch(timestampInMilliseconds);
  print(" 123 date ${dateTime.toString()}");
 return dateTime;
}
  }
*/

  @override
  void initState() {
//dateOfTiem();
print('date time $dateTime');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          children: [

            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Patient Id", style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Styles.textGreen)),
                      SizedBox(height: 10,),
                      Text("Patient Name", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Styles.textGreen),),
                      SizedBox(height: 10,),

                      Text("Date of Birth", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Styles.textGreen),),

                    ],
                  ),
                )),

            Expanded(
                flex: 3,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.patientId, style: TextStyle( fontSize: 14, color: Styles.textGreen),),
                    SizedBox(height: 10,),

                    Text(widget.PatientName, style: TextStyle( fontSize: 14, color: Styles.textGreen),),
                    SizedBox(height: 10,),


                  Text((widget.DateOfBirth == null) ? " " : DateFormat('dd-MM-yyyy').format(DateTimeConverter.dateOfTiemConterter(widget.DateOfBirth)), style: Styles.poppinsFontBlack12),
                  ],)),
            Expanded(
                flex: 1,
                child: Center(
                  child: Column(

                    children: [
                      InkWell(
                        onTap: widget.onTap,
                          child: Image.asset("assets/images/note.png",width: 50,height: 50,))
                    ],
                  ),
                )),

          ],
        ),
      ),
    );
  }




}
