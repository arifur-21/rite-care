import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

class PatientInfoCardWidget extends StatefulWidget {

  final dynamic? patientId;
  final dynamic? patientName;
  final dynamic? patientOfficalNo;
  final dynamic? patientCellNO;
  final dynamic onTap;
  final dynamic editOnTap;
  final  int index;


  PatientInfoCardWidget({this.patientId, this.patientName, this.patientOfficalNo,
      this.patientCellNO, this.onTap, this.editOnTap, required this.index});

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
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("ID", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text(":",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Name",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              SizedBox(width: 10,),
                              Text(":",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ],
                          )



                        ],)),

                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${widget.patientId}', style: TextStyle(fontSize: 16),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text("${widget.patientName}",style: TextStyle(fontSize: 16))),
                            ],
                          )

                        ],)),
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("CELL NO", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text(":",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Offical NO",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              SizedBox(width: 8,),
                              Text(":",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ],
                          )

                        ],)),
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text("${widget.patientCellNO}", style: TextStyle(fontSize: 16),)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text("${widget.patientOfficalNo}",style: TextStyle(fontSize: 16))),
                            ],
                          )

                        ],)),

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
                ],)

            ],
          ),
        ),
      ),
    );
  }
}
