import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/widgets/resuable_header.dart';

import '../../../data/response/status.dart';
import '../../../model/lab_test_model/summery_model0/patient_services/patient_services.dart';
import '../../../view_model/summery_view_model/summery_details_view_model.dart';

class LabReportResultPrintScreen extends StatefulWidget {
  /* dynamic itemId;
  dynamic serviceId;*/
  int? groupItemId;

  final PatientServices patientService;

  LabReportResultPrintScreen({required this.patientService, this.groupItemId});

  @override
  State<LabReportResultPrintScreen> createState() =>
      _LabReportResultPrintScreenState();
}

class _LabReportResultPrintScreenState
    extends State<LabReportResultPrintScreen> {
  final tableRowDesignVm = Get.put(SummeryDetailsViewModel());

  @override
  void initState() {
    print("======================<><><><><>=====================");
    tableRowDesignVm.getTableRowDesignItem(widget.patientService.id,
        widget.patientService.itemId, widget.groupItemId = 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
      ),
      body: Column(
        children: [
          ResuableHeader(
              leadingText: "Test",
              titleText: "Result",
              tralingText: "Reference Value"),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Obx(() {
              switch (tableRowDesignVm.rxRequestStatus.value) {
                case Status.LOADING:
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                case Status.ERROR:
                  print("error ${tableRowDesignVm.error.value.toString()}");
                  return Text(tableRowDesignVm.error.value.toString());

                case Status.SUCCESS:
                  if (tableRowDesignVm
                              .tableRowDesignListItem.value.design?.length ==
                          null ||
                      tableRowDesignVm
                              .tableRowDesignListItem.value.design?.length ==
                          0) {
                    return Text("item not found");
                  } else {
                    return Container(
                      height: Get.height * 0.75,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: tableRowDesignVm
                            .tableRowDesignListItem.value.design!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      "${tableRowDesignVm.tableRowDesignListItem.value.design![index]?.name}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text(
                                          "${tableRowDesignVm.tableRowDesignListItem.value.design![index]?.result}",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${tableRowDesignVm.tableRowDesignListItem.value.design![index]?.unit?.name}",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      "${tableRowDesignVm.tableRowDesignListItem.value.design![index].referanceValue}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 2,
                            color: Colors.grey,
                          );
                        },
                      ),
                    );
                  }
              }
            }),
          ),
          //    SizedBox(height: 30,),
        ],
      ),
    );
  }
}
