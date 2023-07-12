import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/screens/lab_test/sample_list/components/sample_end_date_calendar_widget.dart';
import 'package:ritecare_hms/screens/lab_test/sample_list/components/sample_start_date_calendar_widget.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../../../../data/response/status.dart';
import '../../../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../../../../shere_preference/login_preference.dart';
import '../../../../view_model/sampleListViewModel/sample_list_view_model.dart';
import '../../../../view_model/summery_view_model/lab_test_name_sugge_query_view_model/lab_test_name_query_sugg_view_model.dart';
import '../../../../view_model/summery_view_model/summery_view_model.dart';
import '../../../../widgets/end_date_calendar_widget.dart';
import '../../../../widgets/start_date_calendar_widget.dart';
import '../../../../widgets/resueable_filter_text_filed_widget.dart';
import '../../../qr_code_screen/bar_code_scanner_screen.dart';

class SampleListFilterWidget extends StatefulWidget {
  String textField1HintText;
  String textField2HintText;
  final VoidCallback  onClick;
  final VoidCallback  barCodeOnClick;



  SampleListFilterWidget({required this.textField1HintText, required this.textField2HintText, required this.onClick, required this.barCodeOnClick});

  @override
  State<SampleListFilterWidget> createState() => _SampleListFilterWidgetState();
}

class _SampleListFilterWidgetState extends State<SampleListFilterWidget> {
  LoginPreference loginPreference = LoginPreference();
  final sampleVM = Get.put(SampleListVeiewModel());
  final summeryFilterVM = Get.put(LabTestNameQuerySuggViewModel());

  dynamic labTestSuggName;
  dynamic labTestSuggNameId;


  // this variable holds the selected items
  final List<String> _selectedItems = [];
  bool isCheckeds = false;
  dynamic statusId = 0;
  bool isCancel = false;

  @override
  void initState() {
    sampleVM.getSampleListFilterStatus();
    sampleVM.invoNumController.value.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('smple filter');
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //bar code ui

              ///filter container

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isCancel = true;
                        _showDialog();
                      });


                    },
                    child: Container(
                      height: 42,
                      width: Get.width * 0.4,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(

                              image: DecorationImage(
                                  image: AssetImage('assets/images/filter.png')
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Filter", style: Styles.poppinsFont14_600),
                          SizedBox(width: 10,),
                          Visibility(
                              visible: isCancel,
                              child: InkWell(
                                  onTap: (){
                                    setState(() {

                                        sampleVM.startDate =  DateFormat("yyyy-MM-dd").format(DateTime.now());
                                        sampleVM.endDate =  DateFormat("yyyy-MM-dd").format(DateTime.now());
                                        sampleVM.getSampleListData();
                                        sampleVM.statusName.value = "All";
                                        isCancel = false;

                                        loginPreference.removeServiceId();
                                        sampleVM.invoNumController.value.clear();

                                    });

                                  },
                                  child: Image.asset('assets/images/delete.png', height: 50,))),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ],),
        ),
      ),
    );
  }

  _showDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            /// you need to use `StatefulBuilder`'s setState to update dialog ui
            // therefor I am passing this setState to `_showDatePicker`
            builder: (context, setState) => SingleChildScrollView(
              child: AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: _cancel,
                        child: Icon(
                          Icons.cancel_presentation, size: 30, color: Colors.red,)),
                  ],
                ),
                content: SingleChildScrollView(
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ExpansionTile(
                        leading: Text("${sampleVM.statusName.value}", style: Styles.poppinsFontBlack12_400),
                        title: Text(""),
                        children: [
                          SizedBox(height: 10,),
                          Divider(height: 2, color: Colors.grey,),
                          SizedBox(height: 5,),
                          Column(
                            children: [
                              ListBody(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: (){
                                            setState((){
                                              sampleVM.categoryId.value = 0;
                                              sampleVM.statusName.value = "All";
                                              sampleVM.getSampleListData();
                                            });


                                          },
                                          child: Text("All")),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 150,
                                        child:  FutureBuilder(
                                          future: sampleVM.getSampleListFilterStatus(),
                                            builder: (context, snapshot){
                                            return Obx((){
                                              switch(sampleVM.rxRequestStatus.value){
                                                case Status.LOADING:
                                                  return Center(child:  CircularProgressIndicator(),);

                                                case Status.ERROR:
                                                  print("error ${sampleVM.error.value.toString()}");
                                                  return Text(sampleVM.error.value.toString());

                                                case Status.SUCCESS:

                                                  if(sampleVM.sampleListFilterStatus.value.length == 0){

                                                    return Text("data not found");
                                                  }
                                                  else{

                                                    return  ListView.separated(
                                                      itemCount: sampleVM.sampleListFilterStatus.value.length,
                                                        itemBuilder: (context, index){
                                                          return Column(
                                                            children: [
                                                              ListTile(
                                                                title: Padding(
                                                                  padding: const EdgeInsets
                                                                      .all(8.0),
                                                                  child: InkWell(
                                                                      onTap: () {
                                                                        setState((){
                                                                          isCheckeds = true;
                                                                        });
                                                                        statusId = sampleVM.sampleListFilterStatus[index].id;
                                                                        sampleVM.statusName.value = sampleVM.sampleListFilterStatus[index].name!;


                                                                      sampleVM.getSampleListData(labStatus: statusId);
                                                                      },
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [
                                                                          Text("${sampleVM.sampleListFilterStatus[index].name}",
                                                                            style: TextStyle(color: (sampleVM.categoryId.value == sampleVM.sampleListFilterStatus[index].id && statusId != 0) ? Colors.red : Colors.black ),),
                                                                        ],
                                                                      )),
                                                                  ///color: (statusId == sampleVM.sampleListFilterStatus[index].id && statusId != 0) ? Colors.red : Colors.black
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                    },
                                                        separatorBuilder: (context, index)=> Divider(color: Colors.grey, height: 2,),
                                                        );


                                                  }
                                              }
                                            });
                                        }),


                                      ),
                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
                actions: [

                  SampleStartDateCalendarWidget(),
                  SizedBox(height: 10,),
                  SampleEndDateCalendarWidget(),
                  SizedBox(height: 10,),

                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (value){
                      //  sampleVM.getSampleListData(invoiceNum: value);
                      },
                      controller: sampleVM.sampleIdController.value,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Text("Sample ID"),
                        labelStyle: TextStyle(
                            fontFamily: 'IstokWeb',
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Styles.greyColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Styles.greyColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            height: 40,
                            child: TextFormField(
                              onChanged: (value){
                                sampleVM.getSampleListData(invoiceNum: value);
                              },
                              controller: sampleVM.invoNumController.value..text = sampleVM.scannBarCode.value,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                label: Text("Inv.NO"),
                                labelStyle: TextStyle(
                                    fontFamily: 'IstokWeb',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Styles.greyColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Styles.greyColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              scanQRCode();
                            },
                            child: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image:
                                    AssetImage('assets/icons/barcode.png')),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Styles.primaryColor, width: 2)

                        ),
                        child: Center(
                            child: Text(
                              "Go", style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Styles.primaryColor),)),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }


  void _cancel() {

    Navigator.pop(context);
  }

  void scanQRCode() async {
    try{
      final brCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);

      if (!mounted) return;

      setState(() {
        // getResult = brCode;
        sampleVM.scannBarCode.value = brCode;
        //  barCode = brCode;
      });
      print("QRCode_Result:--");
      print(brCode);
    } on PlatformException {
      //getResult = 'Failed to scan QR Code.';
    }

  }


}





