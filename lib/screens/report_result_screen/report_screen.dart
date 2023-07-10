import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ritecare_hms/model/lab_test_model/summery_sub_item_model/report_body_data_model/report_body_data_model.dart';

import 'package:ritecare_hms/model/lab_test_model/summery_sub_item_model/table_row_design_model.dart';
import 'package:ritecare_hms/widgets/resuable_header.dart';

import '../../data/response/status.dart';
import '../../function/function_class.dart';
import '../../model/lab_test_model/summery_model0/patient_services/patient_services.dart';

import '../../model/lab_test_model/summery_sub_item_model/report_body_data_model/patient.dart';
import '../../model/lab_test_model/summery_sub_item_model/report_body_data_model/service_item.dart';
import '../../model/lab_test_model/summery_sub_item_model/report_body_data_model/template_list.dart';
import '../../utils/color_styles.dart';

import '../../view_model/summery_view_model/summery_details_view_model.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen(
      {Key? key, required this.serviceId, required this.patientService})
      : super(key: key);

  final int serviceId;
  final PatientServices patientService;

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final tableRowDesignVm = Get.put(SummeryDetailsViewModel());

  late List<TextEditingController> listController;

  List<Design> designList = [];

  @override
  void initState() {
    print("===========================");
    print(widget.patientService.groupItemIds);
    tableRowDesignVm
        .getTableRowDesignItem(
            widget.patientService.id,
            widget.patientService.itemId,
            widget.patientService.groupItemIds ?? 0)
        .then((value) {
      designList = value.design ?? [];

      listController = List.generate(
          value.design?.length ?? 0, (index) => TextEditingController());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        actions: [],
      ),
      body: Column(
        children: [
          ResuableHeader(
            leadingText: 'Test Name',
            titleText: 'Result',
            tralingText: 'Unit',
          ),
          const SizedBox(
            height: 10,
          ),

          ////////////// get lab report data -> -> ///////////
          Expanded(
            child: Obx(() {
              switch (tableRowDesignVm.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                case Status.ERROR:
                  print("error ${tableRowDesignVm.error.value.toString()}");
                  return Text(tableRowDesignVm.error.value.toString());

                case Status.SUCCESS:
                  if (designList.length == null || designList.length == 0) {
                    return const Text("item not found");
                  } else {
                    //  print(("length ${tableRowDesignVm.tableRowDesignListItem.value.design?.length} "));
                    return ListView.builder(
                        itemCount: designList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 2, color: Colors.grey),
                              ),
                              child: ExpansionTile(
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Text(
                                                "${designList[index].name}")),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            height: 50,
                                            width: Get.width * 0.35,
                                            child: TextFormField(
                                              onChanged: (value) {
                                                designList[index].result =
                                                    value;
                                              },
                                              controller: listController[index],
                                              decoration: InputDecoration(
                                                fillColor: Colors.grey.shade100,
                                                label: const Text("Result"),
                                                labelStyle: TextStyle(
                                                    color: Styles.primaryColor,
                                                    fontFamily: 'IstokWeb',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2,
                                                      color:
                                                          Styles.primaryColor),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2,
                                                      color:
                                                          Styles.primaryColor),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                                "${designList[index].unit?.name}")),
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
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Reference Range :",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Styles.textGreen),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  "${designList[index].referanceValue}"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              //  Text("Female : 15-19"),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
              }
            }),
          ),

          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () async {
                print(jsonEncode(designList));
                ReportBodyDataModel bodyModel = ReportBodyDataModel(
                    invoiceId: widget.patientService.invoiceId,
                    invoiceStatusUpdate: true,
                    isNewResult: true,
                    reagentExpenseCategoryId: 0,
                    serviceItem: ServiceItem(
                      patientId: widget.patientService.patientId,
                      itemId: widget.patientService.itemId,
                      invoiceId: widget.patientService.invoiceId,
                      receiptId: widget.patientService.receiptId,
                      patientAdmissionId:
                          widget.patientService.patientAdmissionId,
                      nurseStationId: widget.patientService.nurseStationId,
                      serviceListPrice: widget.patientService.serviceListPrice,
                      serviceActualPrice:
                          widget.patientService.serviceActualPrice,
                      serviceQuantity: widget.patientService.serviceQuantity,
                      serviceDate: DateTimeConverter.dateOfTiemConterter(
                              widget.patientService.serviceDate)
                          .toString(),
                      referralPaidDate: widget.patientService.referralPaidDate,
                      modifiedDate: widget.patientService.modifiedDate,
                      checkoutTime: widget.patientService.checkoutTime,
                      serviceProviderId:
                          widget.patientService.serviceProviderId,
                      doctorId: widget.patientService.doctorId,
                      doctorName: widget.patientService.doctorName,
                      returnQantity: widget.patientService.returnQantity,
                      returnPrice: widget.patientService.returnPrice,
                      returnPaid: widget.patientService.returnPaid,
                      referrerPaidUserId:
                          widget.patientService.referrerPaidUserId,
                      referrerPaidUser: widget.patientService.referrerPaidUser,
                      discount: widget.patientService.discount,
                      discountAfterInvoice:
                          widget.patientService.discountAfterInvoice,
                      isBothSideDiscount:
                          widget.patientService.isBothSideDiscount,
                      discountPercentage:
                          widget.patientService.discountPercentage,

                      refund: widget.patientService.refund,
                      refundApprovedBy: widget.patientService.refundApprovedBy,
                      refundStatus: widget.patientService.refundStatus,
                      refundApproval: widget.patientService.refundApproval,
                      isReturn: widget.patientService.isReturn,
                      refundNote: widget.patientService.refundNote,
                      billed: widget.patientService.billed,
                      referralFee: widget.patientService.referralFee,
                      referralFeePaid: widget.patientService.referralFeePaid,
                      referralFeeActual:
                          widget.patientService.referralFeeActual,
                      deliveryDate: widget.patientService.deliveryDate,
                      deliveryTime: widget.patientService.deliveryTime,
                      reportFormatName: widget.patientService.reportFormatName,
                      labStatusId: 2,
                      inventory: widget.patientService.inventory,
                      modifiedBy: widget.patientService.modifiedBy,
                      prescriptionItemId:
                          widget.patientService.prescriptionItemId,
                      sampleId: widget.patientService.sampleId,
                      sl: widget.patientService.sl,
                      isSpecialItem: widget.patientService.isSpecialItem,
                      packageItemId: widget.patientService.packageItemId,
                      packageSeviceId: widget.patientService.packageSeviceId,
                      slideNumber: widget.patientService.slideNumber,
                      signApprovedDate: widget.patientService.signApprovedDate,
                      signApprovedBy: widget.patientService.signApprovedBy,
                      isForeignMission: widget.patientService.isForeignMission,
                      isBarCodePrint: widget.patientService.isBarCodePrint,
                      signApprovedByUser:
                          widget.patientService.signApprovedByUser,
                      labStatus: widget.patientService.labStatus,
                      inventoryId: widget.patientService.inventoryId,
                      user: widget.patientService.user,
                      patient: widget.patientService.patient == null
                          ? null
                          : Patient.fromJson(jsonDecode(
                              jsonEncode(widget.patientService.patient))),
                      patientInvoice: widget.patientService.patientInvoice,
                      prescriptionItem: widget.patientService.prescriptionItem,
                      id: widget.patientService.id,
                      userId: widget.patientService.userId,
                      // statusName: "completed",
                    ),
                    templateList: designList
                        .map(
                          (e) => TemplateList(
                              patientServiceId: widget.patientService.id,
                              name: e.name,
                              result: e.result,
                              headerName: e.headerName,
                              headerNote: e.headerName,
                              unitId: e.unitId,
                              isResultDropDown: e.isResultDropDown,
                              isOpinionDropDown: e.isOpinionDropDown,
                              machine: e.machine,
                              serialNo: e.serialNo,
                              machineId: e.machineId,
                              opinionText: e.opinionText,
                              itemId: widget.patientService.itemId,
                              machineUnitName: e.machineUnitName,
                              createdDate: e.createdDate,
                              techonology: e.techonology,
                              referanceValue: e.referanceValue,
                              comment: e.comment,
                              itemWiseValue: e.itemWiseValue,
                              opinionId: e.opinionId,
                              itemWiseValueId: e.itemWiseValueId,
                              labTemplateDesignComment:
                                  e.labTemplateDesignComment,
                              isComment: e.isComment,
                              tenantId: e.tenantId,
                              tenant: e.tenant,
                              id: e.id,
                              active: e.active,
                              userId: e.unitId,
                              hasErrors: e.hasErrors,
                              errorCount: e.errorCount,
                              noErrors: e.noErrors,
                              isBold: false,
                              isUnitDropDown: e.isUnitDropDown),
                        )
                        .toList());

                await tableRowDesignVm.saveEditLabReportResult(
                    result: bodyModel);
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.save,
                size: 50,
              )),
        ],
      ),
    );
  }
}
