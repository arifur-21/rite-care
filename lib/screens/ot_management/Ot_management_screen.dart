import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import 'package:ritecare_hms/model/ot_management_model/ot_list_model.dart';

import 'package:ritecare_hms/screens/ot_management/ot_management_details_screen.dart';
import 'package:ritecare_hms/widgets/resuable_header.dart';

import '../../data/response/status.dart';


import '../../model/ot_management_model/ot_schedule_model0/surgery.dart';
import '../../model/ot_management_model/ot_schedule_model0/surgery_note.dart';
import '../../utils/color_styles.dart';
import '../../view_model/ot_management_view_model/ot_list_view_model.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';

class OtManagementScreen extends StatefulWidget {
  const OtManagementScreen({Key? key}) : super(key: key);

  @override
  State<OtManagementScreen> createState() => _OtManagementScreenState();
}

class _OtManagementScreenState extends State<OtManagementScreen> {
  final otListVM = Get.put(OtListViewModel());

  dynamic startBtn = 'Start';
  dynamic endBtn = 'End';
  Color? btnColor = Colors.orange;
  bool btnVisibility = true;
  dynamic statusId;
  dynamic status;
  bool postponedVisibilisy = true;
  String? changeStatus;

  @override
  void initState() {
  otListVM.getSchedule();
    super.initState();
  }

  Future<void> _getRefresh() async {
    await otListVM.getSchedule();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(backgroundColor: Styles.primaryColor, actions: [
        AppBarWidget(),
      ]),
      body: RefreshIndicator(
        onRefresh: _getRefresh,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            otListHeaderWidget(),
            calanderDateWidget(),
            ResuableHeader(
                leadingText: "Surgery",
                titleText: "Patient",
                tralingText: "Status"),
            Expanded(
              child: FutureBuilder(
                future:
                otListVM.getSchedule() ,
                  builder: (context, index){
                return Obx(() {
                  switch (otListVM.rxRequestStatus.value) {
                    case Status.LOADING:
                      return Center(
                        child: CircularProgressIndicator(),
                      );

                    case Status.ERROR:

                      return Center(
                          child: Text(otListVM.error.value.toString()));

                    case Status.SUCCESS:
                      if (otListVM.otScheduleList.value.items?.length ==
                          0 ||
                          otListVM.otScheduleList.value.items?.length ==
                              "" ||
                          otListVM.otScheduleList.value.items?.length ==
                              null) {

                        return Center(
                            child:
                            Text("Item not found, Please select date"));
                      } else {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                            otListVM.otScheduleList.value.items?.length,
                            itemBuilder: (context, index) {

                              return otListWidget(
                                  title: otListVM.otScheduleList.value
                                      .items?[index]?.item?.name,
                                  name: otListVM.otScheduleList.value
                                      .items?[index]?.patient?.firstName,
                                  lastName: otListVM.otScheduleList.value
                                      .items?[index]?.patient?.lastName,
                                  status: otListVM.otScheduleList.value
                                      .items?[index]?.surgeryStatus?.name,
                                  surgeryType: otListVM.otScheduleList.value
                                      .items?[index]?.surgeryType?.name,
                                  indexNum: index,
                                  noteId: otListVM.otScheduleList.value
                                      .items?[index]?.id,
                                  statusId: otListVM.otScheduleList.value
                                      .items?[index].surgeryStatusId,
                                  surgery: otListVM
                                      .otScheduleList.value.items![index],
                                  otScheduleModel:
                                  otListVM.otScheduleList.value,
                                  surgeryNotes: otListVM.otScheduleList
                                      .value.items![index].surgeryNotes);
                            });
                      }
                  }
                });
              }),


            )
          ],
        ),
      ),
    );
  }

  Widget otListWidget(
      {dynamic statusId,
        dynamic? title,
        dynamic? name,
        dynamic? lastName,
        dynamic? status,
        dynamic? surgeryType,
        required int indexNum,
        dynamic noteId,
        required Surgery surgery,
        required OtScheduleModel otScheduleModel,
        List<SurgeryNote>? surgeryNotes}) {
    return status == 'Pending'
        ? SizedBox()
        : Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: (status == 'Started') ? Colors.red : (status == 'Completed') ? Colors.green : (status == 'Waiting') ? Colors.orange : Colors.blue,
              ),
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("${title}")),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text("$name ${lastName??''}")),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                          height: 25,
                          width: Get.width * 0.3,
                          decoration: BoxDecoration(
                            color: (status == 'Started')
                                ? Colors.red
                                : (status == 'Completed')
                                ? Colors.green
                                : (status == 'Waiting')
                                ? Colors.orange
                                : Colors.blue,
                            border: Border(),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text("${status}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white)))),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("${surgeryType}")),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [

                        InkWell(
                          onTap: () {
                            _showDialog(
                                status: status,
                                title: title,
                                name: name,
                                surgeryType: surgeryType,
                                indexNum: indexNum,
                                noteId: noteId,
                                surgery: surgery,
                                otScheduleModel: otScheduleModel);
                          },
                          child: Visibility(
                            visible: (status == 'Completed') ? btnVisibility = false : (status == 'Postponed') ? btnVisibility = false : btnVisibility = true,
                            child: Container(
                                height: 30,
                                width: Get.width * 0.2,
                                decoration: BoxDecoration(
                                  color: (status == 'Started')
                                      ? Colors.red
                                      : (status == 'Completed')
                                      ? Colors.green
                                      : Colors.orange,
                                  border: Border(),
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                    child: Text(
                                        "${(status == 'Waiting') ? startBtn : (status == 'Started') ? endBtn : (status == 'Completed') ? btnVisibility : startBtn}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)))),
                          ),
                        ),
                        SizedBox(width: 10,),

                        InkWell(
                          onTap: (){
                            _postPonedDialog(
                                status: status,
                                title: title,
                                name: name,
                                surgeryType: surgeryType,
                                indexNum: indexNum,
                                noteId: noteId,
                                surgery: surgery,
                                otScheduleModel: otScheduleModel
                            );
                          },
                          child:  Visibility(
                            visible:  (status == 'Completed') ? btnVisibility = false : (status == 'Started') ? btnVisibility = false: (status == 'Postponed') ? btnVisibility = false: btnVisibility = true,
                            child: Container(
                                height: 30,
                                width:  Get.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border(),
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                      "Postponed",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OtManagementDetailsScreen(
                                        noteId: noteId,
                                        id: otScheduleModel
                                            .items![indexNum].id,
                                        userId: otScheduleModel
                                            .items![indexNum].userId,
                                      )));
                        },
                        child: Icon(
                          Icons.file_copy_outlined,
                          size: 30,
                          color: Styles.primaryColor,
                        ))
                  ],
                )
              ],
            ),
          )),
    );
  }

  Widget calanderDateWidget() {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 60,
              width: Get.width * 0.45,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Styles.primaryColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ${otListVM.startDate.toString()}",
                      style:
                      TextStyle(fontSize: 16, color: Styles.primaryColor),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    InkWell(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              //get today's date
                              firstDate: DateTime(2000),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                            String formattedDate = DateFormat('yyyy-MM-dd').format(
                                pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                            print(
                                formattedDate); //formatted date output using intl package =>  2022-07-04
                            //You can format date as per your need

                            setState(() {
                              otListVM.startDate = formattedDate;
                              otListVM.getSchedule();
                              //set foratted date to TextField value.
                              print("${otListVM.startDate}");
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
//

                        child: Image.asset('assets/icons/calendar.png', width: 25, height: 25,)),
                  ],
                ),
              )),
          Container(
              height: 60,
              width: Get.width * 0.45,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Styles.primaryColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ${otListVM.endDate.toString()}",
                      style:
                      TextStyle(fontSize: 16, color: Styles.primaryColor),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    InkWell(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              //get today's date
                              firstDate: DateTime(2000),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                            String formattedDate = DateFormat('yyyy-MM-dd').format(
                                pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                            print(
                                formattedDate); //formatted date output using intl package =>  2022-07-04
                            //You can format date as per your need

                            setState(() {
                              otListVM.endDate =
                                  formattedDate; //set foratted date to TextField value.
                              otListVM.getSchedule();
                              print("${otListVM.endDate}");
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                        child: Image.asset('assets/icons/calendar.png', width: 25, height: 25,)),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget otListHeaderWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Styles.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("OT LIST",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }

  _showDialog(
      {dynamic? title,
        dynamic? name,
        dynamic? status,
        dynamic? surgeryType,
        int? indexNum,
        dynamic noteId,
        required Surgery surgery,
        required OtScheduleModel otScheduleModel}) async {
    await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.cancel_presentation,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              content: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded
                          (child: Text("Are you confirmed to Change OT?")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    (status == "Started")?
                    Text(
                      "End",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ):
                    Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              actions: [
                InkWell(
                    onTap: () {
                      if (status == 'Waiting') {
                        statusId = 103;
                        //status = 'Started';
                        print("status Id ${statusId}");
                      } else if (status == 'Started') {
                        statusId = 104;
                        //  status = 'Completed';
                        print("status Id ${statusId}");
                      } else {
                        Text("item not found");
                      }

                      otListVM.operationScheduleStatus(
                        statusId: statusId,
                        noteId: noteId,
                        userId: surgery.userId,
                        surgeryTypeId: surgery.surgeryTypeId,
                        roomId: surgery.roomId,
                        surgeryType_id1: surgery.surgeryType?.id,
                        surgeryType_name1: surgery.surgeryType?.name,
                        disease: surgery.disease,
                        ans: surgery.ans,
                        asa: surgery.asa,
                        ward: surgery.ward,
                        otScheduleModel: otScheduleModel,
                        index: indexNum,
                      );

                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12),
                          color: Styles.primaryColor
                        ),
                        child: Center(
                          child: Text(
                            'Conform',
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          );
        });
  }



  _postPonedDialog(
      {
        dynamic? title,
        dynamic? name,
        dynamic? status,
        dynamic? surgeryType,
        int? indexNum,
        dynamic noteId,
        required Surgery surgery,
        required OtScheduleModel otScheduleModel
      }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.cancel_presentation,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              content: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Are you confirmed to Postponed the OT?"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Postponed",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              actions: [
                InkWell(
                    onTap: () {

postponedVisibilisy =  true;
                      otListVM.operationScheduleStatus(
                        statusId: 105,
                        noteId: noteId,
                        userId: surgery.userId,
                        surgeryTypeId: surgery.surgeryTypeId,
                        roomId: surgery.roomId,
                        surgeryType_id1: surgery.surgeryType?.id,
                        surgeryType_name1: surgery.surgeryType?.name,
                        disease: surgery.disease,
                        ans: surgery.ans,
                        asa: surgery.asa,
                        ward: surgery.ward,
                        otScheduleModel: otScheduleModel,
                        index: indexNum,
                      );

                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12),
                            color: Styles.primaryColor
                        ),
                        child: Center(
                          child: Text(
                            'Conform',
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          );
        });
  }
}
