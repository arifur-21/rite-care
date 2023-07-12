import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/register/PatientRegisterModel.dart';
import 'package:ritecare_hms/screens/patient/patient_list/components/patient_end_date_calendar_widget.dart';
import 'package:ritecare_hms/screens/patient/patient_list/components/patient_list_start_date_widget.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../../../../data/response/status.dart';
import '../../../../model/register/rank_model.dart';
import '../../../../view_model/patient_list_view_model/patient_list_view_model.dart';
import '../../../../view_model/patient_register_view_model/patient_register_view_model.dart';
import '../../../../view_model/summery_view_model/summery_view_model.dart';
import '../../../../widgets/end_date_calendar_widget.dart';
import '../../../../widgets/start_date_calendar_widget.dart';
import '../../../../widgets/resueable_filter_text_filed_widget.dart';

class PatientListFilterWidget extends StatefulWidget {
  const PatientListFilterWidget({Key? key}) : super(key: key);

  @override
  State<PatientListFilterWidget> createState() => _PatientListFilterWidgetState();
}

class _PatientListFilterWidgetState extends State<PatientListFilterWidget> {
  List<String> bloodGroupList = [
    'All',
    'A(+VE)',
    'A(-VE)',
    'B(+VE)',
    'B(-VE)',
    'O(+VE)',
    'O(-VE)',
    'Ab(+VE)',
    'Ab(-VE)',
  ];
  final registerVM = Get.put(PatientRegisterViewModel());
  final patientList = Get.put(PatientListViewModel());

  dynamic bloodGroup;
  dynamic bloodStatusId;
  dynamic unitId = 0;
  dynamic bloodGroupHT = "Select Blood Group";
  dynamic unitName;



  // this variable holds the selected items
  final List<String> _selectedItems = [];
  bool isClick = false;
  bool isCancel = false;

  @override
  void initState() {
    setState(() {
      // bloodGroupHT = bloodGroup;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


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
                    height: 60,
                    width: Get.width * 0.42,
                    padding: const EdgeInsets.all(8.0),
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
                                    patientList.startDate =  null;
                                    patientList.endDate =  null;
                                    patientList.categoryId.value = 0;
                                    patientList.unitNameId.value = 0;
                                   patientList.getPatientList();

                                    isCancel = false;
                                    unitName = '';
                                  });

                                },
                                child: Image.asset('assets/images/delete.png', height: 30,))),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],),
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
                        leading: Text( "${bloodGroupHT.toString()}" , style: TextStyle(fontSize: 16)),
                        title: Text(""),
                        children: [
                          SizedBox(height: 10,),
                          Divider(height: 2, color: Colors.grey,),
                          SizedBox(height: 5,),
                          Column(
                            children: [
                              ListBody(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: Get.width * 0.9,
                                        height: 150,
                                        child:
                                        ListView(
                                          shrinkWrap: true,
                                          children: bloodGroupList.map((e) => Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: InkWell(
                                                    onTap: (){

                                                      if(e == "All"){
                                                        bloodStatusId = 0;
                                                      }
                                                      else if(e == "A(+VE)"){
                                                        bloodStatusId = 1;

                                                      }else if(e == "A(-VE)"){
                                                        bloodStatusId = 2;
                                                      } else if(e == "B(+VE)"){
                                                        bloodStatusId = 3;
                                                      }else if(e == "B(-VE)"){
                                                        bloodStatusId = 4;
                                                      }
                                                      else if(e == "O(+VE)"){
                                                        bloodStatusId = 5;
                                                      }else if(e == "O(-VE)"){
                                                        bloodStatusId = 6;
                                                      }else if(e == "Ab(+VE)"){
                                                        bloodStatusId = 7;
                                                      }else if(e == "Ab(-VE)"){
                                                        bloodStatusId = 8;

                                                      }
                                                      patientList.categoryId.value = bloodStatusId;

                                                      print("blood ${bloodGroup}");

                                                      print(" id ${bloodStatusId}");

                                                    },
                                                    child: Column(
                                                      children: [
                                                        Text("${e.toString()}"),
                                                        // Text("${e.toString()}",style: TextStyle(color: (isClick == false) ? Colors.red : Colors.green),),
                                                        SizedBox(height: 10,),
                                                        Divider(height: 2, color: Colors.grey,)
                                                      ],
                                                    )),

                                              ),
                                            ],
                                          )).toList(),
                                        ),



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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Select Start Date", style: TextStyle(),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  PatientStartDateCalendarWidget(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Select Start End", style: TextStyle(),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  PatientEndDateCalendarWidget(),
                  SizedBox(height: 10,),

                  Column(
                    children: [

                      FutureBuilder(
                          future: registerVM.getUnitData(),
                          builder: (contxt, data){
                            return   Autocomplete<RankModel>(
                              initialValue:
                              TextEditingValue(text: unitName ?? ""),
                              optionsBuilder: (TextEditingValue textValue){
                                registerVM.getUnitData(query: textValue.text.toLowerCase());
                                if(textValue.text.isEmpty){
                                  return List.empty();
                                }

                                return  registerVM.unitListItem.where((value) => value?.name.toLowerCase()
                                    .contains(textValue.text.toLowerCase())).toList();
                              },

                              fieldViewBuilder: (BuildContext context, TextEditingController  _searchController,
                                  FocusNode focusNode,
                                  VoidCallback onFieldSubmitted) {

                                return Container(
                                  height: 40,
                                  child: TextField(

                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Unit",
                                      labelStyle: TextStyle(color: Styles.greyColor,fontFamily: 'IstokWeb', fontWeight: FontWeight.w700, fontSize: 17),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 2, color: Styles.greyColor),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),

                                    controller: _searchController,
                                    focusNode: focusNode,
                                    onSubmitted: (String value) {

                                    },
                                  ),
                                );
                              },


                             /* optionsViewBuilder: (BuildContext context, Function onSelect, Iterable<RankModel> dataList){
                                return Material(
                                  child: ConstrainedBox(
                                      constraints: const BoxConstraints(maxHeight: 100, maxWidth: 600),
                                    child: ListView.builder(
                                        itemCount: dataList.length,
                                        itemBuilder: (context, index){
                                          print(dataList.length);
                                          RankModel data = dataList.elementAt(index);
                                          return InkWell(
                                            onTap: ()=> onSelect(data),
                                            child: ListTile(
                                              title: Text("${data.name}"),
                                            ),
                                          );

                                        }),
                                  ),
                                );
                              },*/


                              displayStringForOption: (RankModel rank)=> '${rank.name}',
                              onSelected: (selectedValue){
                                patientList.unitNameId.value = selectedValue.id;
                                unitId = selectedValue.id;
                                unitName = selectedValue.name;
                                print("select value ${selectedValue.id}");
                              },
                            );
                          }),

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
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Styles.primaryColor, width: 2)

                        ),
                        child: InkWell(
                            onTap: () {
                            patientList.getPatientList();
                              Navigator.pop(context);
                            },
                            child: Center(
                                child: Text(
                                  "Go", style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Styles.primaryColor),))),
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


}




