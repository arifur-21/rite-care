
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../../../../model/lab_test_model/summery_model0/patient_services/patient_services.dart';


class ExpandableItemSubList extends StatefulWidget {

  final String? title;
  final String? category;
  final String? name;
  final VoidCallback? onTap;
  final dynamic barCode;
  List<PatientServices>? patientServiceList;

  ExpandableItemSubList({this.title, this.category, this.name, this.onTap, this.patientServiceList, this.barCode});

  @override
  State<ExpandableItemSubList> createState() => _ExpandableItemSubListState();
}

class _ExpandableItemSubListState extends State<ExpandableItemSubList> {
  int? statusId;
  String? status;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 220,
      child:  ListView.builder(
          itemCount: widget.patientServiceList?.length ,
          itemBuilder: (context, index){
            statusId =   widget.patientServiceList![index].labStatusId;

            if(statusId == 1){
              status = "Pending";
            }
            else if(statusId == 2){
              status = "Completed";
            }
            else if(statusId == 3){
              status = "Delivered";
            }
            else if(statusId == 4){
              status = "Collected";
            }else if(statusId == 5){
              status = "Printed";
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 2, color: Styles.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text("${widget.patientServiceList![index].item?.name}", style: Styles.poppinsFontBlack12_500)),
                          SizedBox(width: 10,),
                          Expanded(
                              flex: 1,
                              child: Text("${widget.patientServiceList![index].doctorName}",style: Styles.poppinsFontBlack12_300)),
                          SizedBox(width: 10,),
                          Expanded(
                              flex: 1,
                              child: Text("${widget.patientServiceList![index].item?.itemCategory?.name}",style: Styles.poppinsFontBlack12_300))

                        ],),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                         // Text("100893", style: Styles.poppinsFontBlack12_600),

                          Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: (statusId == 1)
                                    ? Colors.red
                                    : (statusId == 2)
                                    ? Colors.green
                                    : (statusId == 3)
                                    ? Colors.orange
                                    : (statusId == 4)
                                    ? Colors.blue
                                    : Colors.indigo,
                                border: Border(),
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Text("$status", style: Styles.poppinsFont12_600))

                          ),
                          /*Row(
                            children: [
                              InkWell(
                                onTap: widget.onTap,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/icons/barcode.png')
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12,),

                              InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/icons/message.png')
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          )*/
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }, ),
    );
  }
}
