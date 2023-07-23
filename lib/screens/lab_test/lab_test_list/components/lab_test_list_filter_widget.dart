import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import '../../../../data/response/status.dart';
import '../../../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../../../../view_model/lab_test_list_view_model/lab_test_list_filter_sugg_item_view_model/lab_test_list_filter_sugg_view_model.dart';
import '../../../../view_model/lab_test_list_view_model/lab_test_list_view_model.dart';


class LabTestListFilterWidget extends StatefulWidget {
  String textField1HintText;
  final VoidCallback onClick;

  LabTestListFilterWidget(
      {required this.textField1HintText, required this.onClick});

  @override
  State<LabTestListFilterWidget> createState() =>
      _LabTestListFilterWidgetState();
}

class _LabTestListFilterWidgetState extends State<LabTestListFilterWidget> {
  final labTestListVM = Get.put(LabTestListViewModel());
  final labTestListFilterSuggNameVM = Get.put(LabTestListFilterSuggViewModel());

  // this variable holds the selected items
  final List<String> _selectedItems = [];
  bool isCheckeds = false;
  dynamic itemId = 0;
  bool isFilterClear = false;
  bool isClick = false;

  dynamic labTestSuggName;
  dynamic labTestSuggNameId;

  @override
  void initState() {
    labTestListVM.getLabTestListStatusData();
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
            //bar code ui
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),

            ///filter container



            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      //isCancel = true;
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
                            visible: isFilterClear,
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    isFilterClear = false;
                                    labTestListVM.statusName.value = "All";
                                    labTestListVM.getLabTestListData(labStatus: 0);
                                    labTestSuggName = '';
                                  });

                                },
                                child: Image.asset('assets/images/delete.png', height: 50,))),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
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
            builder: (context, setStates) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: _cancel,
                      child: Icon(
                        Icons.cancel_presentation,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExpansionTile(
                      leading: Text("${labTestListVM.statusName.value}",
                          style: Styles.poppinsFontBlack12_400),
                      title: Text(""),
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
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
                                          isClick = false;
                                          labTestListVM.categoryId.value = 0;
                                          labTestListVM.statusName.value = 'All';
                                          labTestListVM.getLabTestListData();
                                        });


                                      },
                                        child: Text("All")),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      child: Obx(() {
                                        switch (labTestListVM
                                            .rxRequestStatus.value) {
                                          case Status.LOADING:
                                            return Center(
                                              child:
                                              CircularProgressIndicator(),
                                            );

                                          case Status.ERROR:
                                            print(
                                                "error ${labTestListVM.error.value.toString()}");
                                            return Text(labTestListVM
                                                .error.value
                                                .toString());

                                          case Status.SUCCESS:
                                            if (labTestListVM
                                                .labTestListFilterStatus.length == 0) {
                                              return Text(
                                                  "data not found");
                                            } else {
                                              return ListView.separated(
                                                  shrinkWrap: true,
                                                  itemCount: labTestListVM.labTestListFilterStatus.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      title: Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .all(8.0),
                                                        child: InkWell(
                                                            onTap: () {
                                                              setStates(
                                                                      () {
                                                                    isClick = true;
                                                                  });
                                                              itemId = labTestListVM.labTestListFilterStatus[index].id!;
                                                              labTestListVM.categoryId.value = itemId;
                                                              labTestListVM.statusName.value = labTestListVM.labTestListFilterStatus[index].name!;
                                                              labTestListVM.getLabTestListData(labStatus: itemId);

                                                            },
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                      "${labTestListVM.labTestListFilterStatus[index].name}",
                                                                      style: TextStyle(
                                                                          color: (labTestListVM.categoryId.value == labTestListVM.labTestListFilterStatus[index].id! && itemId != 0)
                                                                              ? Colors.red
                                                                              : Colors.black)),
                                                                ),
                                                              ],
                                                            )),
                                                        ///color: (statusId == sampleVM.sampleListFilterStatus[index].id && statusId != 0) ? Colors.red : Colors.black
                                                      ),
                                                    );
                                                  }, separatorBuilder: (context, index)=> Divider(color: Colors.grey, height: 2,),);
                                            }
                                        }
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
                Column(
                  children: [
                    FutureBuilder(
                        future: labTestListFilterSuggNameVM.getLabTestNameSuggData(),
                        builder: (contxt, data) {
                          return Autocomplete<LabTestNameSuggModel>(
                            initialValue:
                            TextEditingValue(text: labTestSuggName ?? ""),
                            optionsBuilder: (TextEditingValue textValue) {
                              labTestListFilterSuggNameVM.getLabTestNameSuggData(query: textValue.text);
                              print("query text ${textValue.text}");
                              if (textValue.text.isEmpty) {
                                labTestListVM.getLabTestListData(labStatus: 0);
                                return List.empty();
                              }
                              return labTestListFilterSuggNameVM.labTestNameSuggList
                                  .where((value) => value.name
                                  .toLowerCase()
                                  .contains(textValue.text.toLowerCase()))
                                  .toList();
                            },
                            fieldViewBuilder: (BuildContext context,
                                textEditingController,
                                FocusNode focusNode,
                                VoidCallback onFieldSubmitted) {
                              return Container(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Lab test name",
                                    labelStyle: TextStyle(
                                      fontFamily: 'IstokWeb',
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onSubmitted: (String value) {
                                    setState(() {

                                    });
                                  },
                                ),
                              );
                            },
                           /* optionsViewBuilder: (BuildContext context,
                                Function onSelect,
                                Iterable<LabTestNameSuggModel> dataList) {
                              return Material(
                                child: ListView.builder(
                                    itemCount: dataList.length,
                                    itemBuilder: (context, index) {
                                      print("fliter length ${dataList.length}");
                                      LabTestNameSuggModel data = dataList.elementAt(index);
                                      return InkWell(
                                        onTap: () => onSelect(data),
                                        child: ListTile(
                                          title: Text("${data.name}"),
                                        ),
                                      );
                                    }),
                              );
                            },*/
                            displayStringForOption:
                                (LabTestNameSuggModel latTastName) =>
                            '${latTastName.name}',
                            onSelected: (selectedValue) {
                              setStates((){
                                labTestListVM.getLabTestListData(labTestSuggNameId: selectedValue.id);
                                labTestSuggNameId = selectedValue.id;
                                labTestSuggName = selectedValue.name;
                              });

                            },
                          );
                        }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context, _selectedItems);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Styles.primaryColor, width: 2)),
                      child: InkWell(
                          onTap: () {
                            setState((){
                              isFilterClear = true;
                            });

                            Navigator.pop(context);
                          },
                          child: Center(
                              child: Text(
                                "Go",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Styles.primaryColor),
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _cancel() {
    Navigator.pop(context);
  }
}
