import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

class PatientInfoCardWidget extends StatefulWidget {

  final dynamic? patientId;
  final dynamic? patientName;
  final dynamic? patientOfficalNo;
  final dynamic? patientCellNO;
  final dynamic? lastName;
  final dynamic onTap;
  final dynamic editOnTap;
  final  int index;


  PatientInfoCardWidget({this.patientId, this.patientName, this.patientOfficalNo,
      this.patientCellNO, this.onTap, this.editOnTap, required this.index, this.lastName});

  @override
  State<PatientInfoCardWidget> createState() => _PatientInfoCardWidgetState();
}

class _PatientInfoCardWidgetState extends State<PatientInfoCardWidget> {
  List<String> data =[
    'one',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.greenAccent,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(child: Text('ID : ${widget.patientId}', style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    child: Row(
                      
                      children: [
                        
                        Expanded(child: Text('CELL NO : ${widget.patientCellNO}', style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  )

                ],
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(child: Text('Name : ${widget.patientName } ${widget.lastName??""} ', style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    child: Row(

                      children: [

                        Expanded(child: Text('Offical No : ${widget.patientOfficalNo}', style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  )

                ],
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: widget.editOnTap,
                      child: Image.asset('assets/icons/edit.png',width: 25, height: 30,)),
                  SizedBox(width: 20,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          data.removeAt(widget.index);
                        });
                      },
                      child: InkWell(
                          onTap: widget.onTap,
                          child:  Image.asset('assets/icons/delete.png',width: 25, height: 25,)))
                ],),

            ],
          ),
        ),
      ),
    );
  }
}
