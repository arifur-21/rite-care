import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/screens/lab_test/sample_list/components/sample_filter_widget.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/view_model/logged_in_user_view_model/logged_in_users_view_model.dart';
import 'package:ritecare_hms/view_model/sampleListViewModel/sample_list_view_model.dart';
import 'package:ritecare_hms/widgets/resuable_header.dart';

import '../../../data/response/status.dart';
import '../../../function/function_class.dart';
import '../../../model/lab_test_model/summery_model0/item.dart';
import '../../../shere_preference/login_preference.dart';
import '../../../view_model/markes_delevered_view_model/markes_delevered_view_model.dart';
import '../../../view_model/summery_view_model/summery_view_model.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/drawer_widget.dart';

import '../../qr_code_screen/qr_code_screen.dart';
import '../summery/components/expandable_summery_list_item_widget.dart';
import 'components/expandable_item_sub_list.dart';


class SampleList extends StatefulWidget {
  const SampleList({Key? key}) : super(key: key);

  @override
  State<SampleList> createState() => _SampleListState();
}

class _SampleListState extends State<SampleList> {
  LoginPreference loginPreference = LoginPreference();
  var colors = Styles.primaryColor;

  final sampleListVM = Get.put(SampleListVeiewModel());
  final loggedInUserVM = Get.put(LoggedInUserViewModel());
  final markeasDeleveredVM = MarkesDeleveredViewModel();
  int? statusId;
  String? status = '';
  bool btnVisibility = false;
  dynamic dateTime;
  dynamic dobs;
  final scrollController = ScrollController();
  int page = 1;

  bool isCancel = false;

  dynamic userTenentId;
  dynamic userSPermissionId;

  @override
  void initState() {
    loggedInUserVM.getLoggedInUserData();
    sampleListVM.getSampleListData(isRefreshed: true);
    scrollController.addListener(_scrollListener);


    super.initState();
  }

  void _scrollListener() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      print("another page called");
      await sampleListVM.getSampleListData(isRefreshed: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        actions: [
          AppBarWidget(),
        ],
      ),
      body: RefreshIndicator(

        onRefresh: () async {
        await  sampleListVM.getSampleListData(isRefreshed: true);
        },
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SampleListFilterWidget(
                    textField1HintText: 'Labtest Name',
                    textField2HintText: 'Inv.No',
                    onClick: () {
                      sampleListVM.getSampleListData();
                      Navigator.pop(context);
                    }, barCodeOnClick: () {  },

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ResuableHeader(
                    leadingText: 'Date',
                    titleText: 'Inv.No',
                    tralingText: 'Status',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            ///////////////// get summery data
            Expanded(
                child: FutureBuilder(
                  future: sampleListVM.getSampleListData(),
                  builder: (context, snapshot) {
                    return Obx(() {
                      switch (sampleListVM.rxRequestStatus.value) {
                        case Status.LOADING:
                          return Center(
                            child: CircularProgressIndicator(),
                          );

                        case Status.ERROR:
                          print("error ${sampleListVM.error.value.toString()}");
                          return Text(sampleListVM.error.value.toString());

                        case Status.SUCCESS:
                          if (sampleListVM.items.isEmpty) {
                            return Text("Item not found, please select date");
                          } else {
                            return ListView.builder(
                                padding: EdgeInsets.only(
                                    bottom: sampleListVM.items.length < 10
                                        ? (70 *
                                        (10 - sampleListVM.items.length)
                                            .toDouble())
                                        : 0),
                                controller: scrollController,
                                // shrinkWrap: true,
                                itemCount: sampleListVM.items.length + 1,
                                itemBuilder: (context, index) {
                                  if (index == sampleListVM.items.length) {
                                    return sampleListVM.hasReachedMax.value
                                        ? const SizedBox()
                                        : const Center(
                                        child: CircularProgressIndicator());
                                  }
                                  if (index < sampleListVM.items.length) {
                                    dobs = sampleListVM.items[index].invoiceDate;
                                    statusId = sampleListVM.items[index].labStatusId;

                                   /* List<int>? listOfStatusId = sampleListVM
                                        .items[index].patientServices
                                        ?.map((e) =>
                                        int.parse(e.labStatusId.toString()))
                                        .toList() ??
                                        [];

                                    statusId = listOfStatusId.contains(1)
                                        ? 1
                                        : listOfStatusId.contains(4)
                                        ? 4
                                        : listOfStatusId.contains(2)
                                        ? 2
                                        : listOfStatusId.contains(5)
                                        ? 5
                                        : 3;

                                    // statusId = summeryVM
                                    //     .items?[index].labStatusId;

                                    //////////print
                                    print(sampleListVM.items[index].patientServices
                                        ?.map((element) {
                                      return int.parse(
                                          element.labStatusId.toString());
                                    }).toList());*/

                                    //print("demo1 ${summeryVM.items?[index].patientServices![0].item?.name}");

                                    if (statusId == 1) {
                                      status = "Pending";
                                    } else if (statusId == 2) {
                                      status = "Completed";
                                    } else if (statusId == 3) {
                                      status = "Delivered";
                                    } else if (statusId == 4) {
                                      status = "Collected";
                                    } else if (statusId == 5) {
                                      status = "Printed";
                                    }

                                    return Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          border: Border.all(
                                              width: 2,
                                              color: (statusId == 1)
                                                  ? Colors.red
                                                  : (statusId == 2)
                                                  ? Colors.green
                                                  : (statusId == 3)
                                                  ? Colors.orange
                                                  : (statusId == 4)
                                                  ? Colors.blue
                                                  : Colors.indigo),
                                        ),
                                        child: ExpansionTile(
                                          trailing: Container(
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
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                    Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 3,
                                                    blurRadius: 7,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                  child: Text("${status}",
                                                      style:
                                                      Styles.poppinsFont12_600))),
                                          title: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                      DateFormat('dd-MM-yyyy HH:mm ')
                                                          .format(DateTimeConverter
                                                          .dateOfTiemConterter(
                                                          dobs)),
                                                      style:
                                                      Styles.poppinsFontBlack12),
                                                  Text(
                                                      "${sampleListVM.items[index].invoiceNo}",
                                                      style:
                                                      Styles.poppinsFontBlack12),
                                                ],
                                              )
                                            ],
                                          ),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "PATIENT :",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.w500,
                                                            color: Styles.textGreen),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "${sampleListVM.items[index].patient?.firstName} ${sampleListVM.items[index].patient?.lastName}",
                                                        style:
                                                        TextStyle(fontSize: 12),
                                                      ),
                                                    ],
                                                  ),

                                       ],
                                              ),
                                            ),
                                            ExpandableItemSubList(
                                              name: sampleListVM
                                                  .items[index].patient?.firstName,
                                              patientServiceList: sampleListVM
                                                  .items[index]
                                                  .patientServices,

                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                  return SizedBox();
                                });
                          }
                      }
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }

}
