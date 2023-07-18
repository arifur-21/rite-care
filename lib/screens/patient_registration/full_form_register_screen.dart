import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ritecare_hms/screens/patient_registration/short_form_register.dart';

import 'package:ritecare_hms/widgets/reuseable_text_filed.dart';
import 'package:ritecare_hms/widgets/rounded_button.dart';
import '../../data/response/status.dart';
import '../../model/register/rank_model.dart';
import '../../utils/color_styles.dart';
import '../../utils/screen_main_padding.dart';
import '../../view_model/patient_register_view_model/patient_register_view_model.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/reuseable_header_container_widget.dart';
import '../home_screen.dart';
import '../navigation/pageOne.dart';
import 'components/register_dropdown_list_data.dart';
import 'components/register_text_field_validate.dart';
import 'full_form_register_screen.dart';

class RegistrFullForm extends StatefulWidget {
  dynamic? name;
  dynamic? gender;
  dynamic? cellNumber;

  RegistrFullForm({this.name, this.gender, this.cellNumber});

  @override
  State<RegistrFullForm> createState() => _RegistrFullFormState();
}

class _RegistrFullFormState extends State<RegistrFullForm> {
  List<String> serviceTypeList = ['Uniform', 'RE', 'CNE'];
  List<String> genderList = ['Male', 'Female', 'Third Gender'];
  List<String> bloodGroupList = [
    'A(+VE)',
    'A(-VE)',
    'B(+VE)',
    'B(-VE)',
    'O(+VE)',
    'O(-VE)',
    'AB(+VE)',
    'AB(-VE)',
  ];

  dynamic prefixId;
  dynamic statusId;
  dynamic relationId;

  final registerVM = Get.put(PatientRegisterViewModel());
  final _formKey = GlobalKey<FormState>();

  File? imageFile;

  dynamic selectBloodGroup = '';
  String selectGender = '';
  String selectPatientFrefix = '';
  String selectPatientStatus = '';
  String selectPatientRelation = '';
  String selectServiceType = '';
  String dateOfBirth = '';
  bool isRetireds = false;

  dynamic patientPrefixId;
  dynamic patientStatusId;
  dynamic patinetRelationId;
  dynamic bloodGroupId;
  dynamic genderId;
  dynamic rankId;
  dynamic unitId;
  dynamic patientPrefixName;
  dynamic patientStatusName;
  dynamic patientRelationName;
  dynamic bloodGroupName;
  dynamic genderName;
  dynamic rankName;
  dynamic unitName;

  bool isOpen = false;
  bool isGender = false;
  bool isPrefix = false;
  bool isStutus = false;
  bool isRelation = false;
  bool isServiceType = false;

  dynamic inputServiceId;
  dynamic resServiceId;

  @override
  void initState() {
    registerVM.officalNOController.value.clear();
    registerVM.firstNameController.value.clear();
    registerVM.lastNameController.value.clear();
    registerVM.phoneNumberController.value.clear();
    registerVM.nationalIdController.value.clear();
    registerVM.emailController.value.clear();
    registerVM.emergencyContactNumberController.value.clear();
    registerVM.emergencyContactRelationController.value.clear();
    registerVM.emergencyNameContactController.value.clear();
    registerVM.streetController.value.clear();
    registerVM.cityController.value.clear();
    registerVM.patientOldIdController.value.clear();
    registerVM.getServiceTypeId();
    super.initState();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenMainPadding.screenPadding),
          child: Column(
            children: [
              ReuseableHeaderContainerWidget(
                titleText: '',
                leadingText: 'Patient Registration',
                tralingIcon: "assets/icons/cancel.png",
                onTap: () {
                  Get.to(HomeScreen());
                 // Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundedButton(
                    width: Get.width * 0.4,
                    title: 'Short Form',
                    color: Colors.greenAccent,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrShortForm()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Positioned(
                    child: imageFile == null
                        ? Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              border: Border.all(width: 1, color: Colors.grey),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/profile.png')),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                border:
                                    Border.all(width: 2, color: Colors.grey)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.file(
                                  imageFile!,
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.fill,
                                )),
                          ),
                  ),
                  Positioned(
                    top: 140,
                    right: 30,
                    child: InkWell(
                        onTap: () async {
                          Map<Permission, PermissionStatus> statuses = await [
                            Permission.storage,
                            Permission.camera,
                          ].request();
                          if (statuses[Permission.storage]!.isGranted &&
                              statuses[Permission.camera]!.isGranted) {
                            showImagePicker(context);
                          } else {
                            print('no permission provided');
                            print('no ${imageFile.toString()}');
                          }
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                color: Colors.white),
                            child: Icon(Icons.add_a_photo_rounded, size: 25))),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Obx(() {
                        switch (registerVM.rxRequestStatus1.value) {
                          case Status1.SUCCESS:
                            return Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: Get.width * 0.88,
                                    child:  TextFormField(
                                      onChanged: (value) async {
                                        await registerVM.getServiceTypeId(
                                            serviceNumber: value);
                                        print("number $value");
                                        setState(() {
                                          inputServiceId = value;
                                          resServiceId = registerVM.serviceTypeIdList
                                              .value.patient?.serviceId;
                                        });
                                        if (value ==
                                            registerVM.serviceTypeIdList.value.patient
                                                ?.serviceId) {
                                          print("already axist $value");
                                        }
                                      },
                                      controller:
                                      registerVM.officalNOController.value,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        print("$value");
                                        if (value!.isEmpty || value == null) {
                                          return "enter your personal/offical number";
                                        }
                                        if (inputServiceId ==
                                            registerVM.serviceTypeIdList.value.patient
                                                ?.serviceId) {
                                          print("already axist111 $inputServiceId");
                                        }

                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        label: Text("Personal/offical NO"),
                                        labelStyle: TextStyle(
                                            color: Styles.primaryColor,
                                            fontFamily: 'IstokWeb',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Styles.drawerListColor),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Styles.drawerListColor),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 6,),
                                  Text("*", style: TextStyle(fontSize: 20, color: Colors.red),)
                                ],
                              ),

                            );
                        }
                      }),
                      (inputServiceId == resServiceId &&
                              registerVM
                                  .officalNOController.value.text.isNotEmpty)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Already Exist",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            )
                          : Text(" "),
                      /*    SizedBox(
                        height: 15,
                      ),

                      serviceTypeWidget(),*/

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Select Patient Relation',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      patientRelationWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Select Patient Prefix',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      patientPrefix(),
                      SizedBox(
                        height: 15,
                      ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Select Patient Status',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      patientStatusWidget(),
                      SizedBox(
                        height: 15,
                      ),*/
                      FutureBuilder(
                          future: registerVM.getRankData(),
                          builder: (contxt, data) {
                            return Autocomplete<RankModel>(
                              optionsBuilder: (TextEditingValue textValue) {
                                if (textValue.text.isEmpty) {
                                  return List.empty();
                                }
                                return registerVM.rankListItem
                                    .where((value) => value.name
                                        .toLowerCase()
                                        .contains(textValue.text.toLowerCase()))
                                    .toList();
                              },
                              fieldViewBuilder: (BuildContext context,
                                  textEditingController,
                                  FocusNode focusNode,
                                  VoidCallback onFieldSubmitted) {
                                return TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Rank",
                                    labelStyle: TextStyle(
                                        color: Styles.primaryColor,
                                        fontFamily: 'IstokWeb',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Styles.drawerListColor),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Styles.drawerListColor),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onSubmitted: (String value) {},
                                );
                              },
                              optionsViewBuilder: (BuildContext context,
                                  Function onSelect,
                                  Iterable<RankModel> dataList) {
                                return Material(
                                  child: ListView.builder(
                                      itemCount: dataList.length,
                                      itemBuilder: (context, index) {
                                        RankModel data =
                                            dataList.elementAt(index);
                                        return InkWell(
                                          onTap: () => onSelect(data),
                                          child: ListTile(
                                            title: Text("${data.name}"),
                                          ),
                                        );
                                      }),
                                );
                              },
                              displayStringForOption: (RankModel rank) =>
                                  '${rank.name}',
                              onSelected: (selectedValue) {
                                print("select value ${selectedValue.name}");
                                print("select id ${selectedValue.id}");
                                rankId = selectedValue.id;
                                rankName = selectedValue.name;
                              },
                            );
                          }),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Is Retired",
                            style: TextStyle(
                                fontSize: 16, color: Styles.drawerListColor),
                          ),
                          Checkbox(
                            checkColor: Colors.greenAccent,
                            value: isRetireds,
                            onChanged: (bool? value) {
                              setState(() {
                                isRetireds = value!;
                                print(isRetireds);
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FutureBuilder(
                          future: registerVM.getUnitData(),
                          builder: (contxt, data) {
                            return Autocomplete<RankModel>(
                              optionsBuilder: (TextEditingValue textValue) {
                                registerVM.getUnitData(
                                    query: textValue.text.toLowerCase());
                                if (textValue.text.isEmpty) {
                                  return List.empty();
                                }

                                return registerVM.unitListItem
                                    .where((value) => value?.name
                                        .toLowerCase()
                                        .contains(textValue.text.toLowerCase()))
                                    .toList();
                              },
                              fieldViewBuilder: (BuildContext context,
                                  TextEditingController _searchController,
                                  FocusNode focusNode,
                                  VoidCallback onFieldSubmitted) {
                                return TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Unit",
                                    labelStyle: TextStyle(
                                        color: Styles.primaryColor,
                                        fontFamily: 'IstokWeb',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Styles.drawerListColor),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Styles.drawerListColor),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  controller: _searchController,
                                  focusNode: focusNode,
                                  onSubmitted: (String value) {},
                                );
                              },
                              optionsViewBuilder: (BuildContext context,
                                  Function onSelect,
                                  Iterable<RankModel> dataList) {
                                return Material(
                                  child: ListView.builder(
                                      itemCount: dataList.length,
                                      itemBuilder: (context, index) {
                                        RankModel data =
                                            dataList.elementAt(index);
                                        return InkWell(
                                          onTap: () => onSelect(data),
                                          child: ListTile(
                                            title: Text("${data.name}"),
                                          ),
                                        );
                                      }),
                                );
                              },
                              displayStringForOption: (RankModel rank) =>
                                  '${rank.name}',
                              onSelected: (selectedValue) {
                                unitId = selectedValue.id;
                                unitName = selectedValue.name;
                                print("select value ${selectedValue.name}");
                              },
                            );
                          }),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        children: [
                          Container(
                            width: Get.width * 0.88,
                            child: RegisterValidateTextField(
                              textController: registerVM.firstNameController.value,
                              hintText: "First Name",
                              errorText: "enter your name",
                            ),
                          ),
                          SizedBox(width: 6,),
                          Text("*", style: TextStyle(fontSize: 20, color: Colors.red),)
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue: registerVM.lastNameController.value,
                          hintText: "Last Name"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue:
                              registerVM.patientOldIdController.value,
                          hintText: "Patient old id"),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Select Gender',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      genderWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Select Blood Group',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      bloodGroupWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width * 0.88,
                            child:RegisterValidateTextField(
                              textController:  registerVM.phoneNumberController.value,
                              hintText: "Phone Number",
                              errorText: "enter your phone",
                            ),
                          ),
                          SizedBox(width: 6,),
                          Text("*", style: TextStyle(fontSize: 20, color: Colors.red),)
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue:
                              registerVM.nationalIdController.value,
                          hintText: "National Id"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue:
                              registerVM.emergencyContactNumberController.value,
                          hintText: "Emergency contact number"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue:
                              registerVM.emergencyNameContactController.value,
                          hintText: "Emergency contact name"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue: registerVM
                              .emergencyContactRelationController.value,
                          hintText: "Emergency contact relation"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue: registerVM.emailController.value,
                          hintText: "EMAIL"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue: registerVM.streetController.value,
                          hintText: "Street/Address"),
                      SizedBox(
                        height: 15,
                      ),
                      ResuableTextField(
                          controllerValue: registerVM.cityController.value,
                          hintText: "City"),
                      SizedBox(
                        height: 15,
                      ),
                      DateOfBrithWidget(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
              RoundedButton(
                  width: Get.width * 0.4,
                  title: "Register",
                  color: Styles.primaryColor,
                  onTap: () {
                    if (selectGender.isEmpty) {
                      print("gender null");
                    }
                    print("status  ${patientStatusId}");
                    print("blood group id111$bloodGroupName");
                    if (_formKey.currentState!.validate()) {
                      registerVM.registerPatientFullForm(
                          serviceId: selectServiceType,
                          genderId: genderId,
                          bloodId: bloodGroupId,
                          imageUrl: imageFile,
                          dateOfBrith: dateOfBirth,
                          isRetired: isRetireds,
                          prefixId: patientPrefixId,
                          relationId: patinetRelationId,
                          patientStatusId: patientStatusId,
                          genderName: genderName,
                          bloodGroupName: bloodGroupName,
                          patientPrefixName: patientPrefixName,
                          patientRelationName: patientRelationName,
                          patientStatusName: patientRelationName,
                          rankId: rankId,
                          rankName: rankName,
                          unitId: unitId,
                          unitName: unitName);


                    }

                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget bloodGroupWidget() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectBloodGroup,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isOpen
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.primaryColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isOpen)
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: SingleChildScrollView(
                child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: bloodGroupList
                      .map((e) => Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.7, color: Colors.grey)),
                              color: selectBloodGroup == e
                                  ? Styles.primaryColor
                                  : Colors.white,
                            ),
                            child: InkWell(
                                onTap: () {
                                  selectBloodGroup = e.toString();
                                  print(selectBloodGroup);
                                  print(e.toString());
                                  isOpen = false;
                                  setState(() {
                                    if (selectBloodGroup ==
                                        "Select Blood Group") {
                                      bloodGroupId = '';
                                    } else if (e == "A(+VE)") {
                                      bloodGroupId = 1;
                                    } else if (e == "A(-VE)") {
                                      bloodGroupId = 2;
                                    } else if (e == "B(+VE)") {
                                      bloodGroupId = 3;
                                    } else if (e == "B(-VE)") {
                                      bloodGroupId = 4;
                                    } else if (e == "O(+VE)") {
                                      bloodGroupId = 5;
                                    } else if (e == "O(-VE)") {
                                      bloodGroupId = 6;
                                    } else if (e == "Ab(+VE)") {
                                      bloodGroupId = 7;
                                    } else if (e == "Ab(-VE)") {
                                      bloodGroupId = 8;
                                    }
                                    //  print("blood ${bloodGroup}");
                                    print(" id ${e}");
                                    bloodGroupName = e;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    e.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: selectBloodGroup == e
                                            ? Colors.white
                                            : Styles.drawerListColor),
                                  ),
                                )),
                          ))
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  genderWidget() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isGender = !isGender;
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectGender,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isGender
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.drawerListColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isGender)
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: SingleChildScrollView(
                child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: genderList
                      .map((e) => Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.7, color: Colors.grey)),
                              color: selectGender == e
                                  ? Styles.primaryColor
                                  : Colors.white,
                            ),
                            child: InkWell(
                                onTap: () {
                                  selectGender = e.toString();
                                  isGender = false;
                                  setState(() {
                                    if (e == "Male") {
                                      genderId = 1;
                                    } else if (e == "Female") {
                                      genderId = 2;
                                    } else if (e == "Third Gender") {
                                      genderId = 3;
                                    }
                                  });
                                  print("genderId ${genderId}");
                                  genderName = e;
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    e.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: selectGender == e
                                            ? Colors.white
                                            : Styles.drawerListColor),
                                  ),
                                )),
                          ))
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget serviceTypeWidget() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isServiceType = !isServiceType;
                //  registerVM.getGender();
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectServiceType,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isServiceType
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.primaryColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isServiceType)
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: ListView(
                primary: true,
                shrinkWrap: true,
                children: serviceTypeList
                    .map((e) => e == null
                        ? CircularProgressIndicator()
                        : Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.7, color: Colors.grey)),
                              color: selectServiceType == e
                                  ? Styles.primaryColor
                                  : Colors.white,
                            ),
                            child: InkWell(
                                onTap: () {
                                  selectServiceType = e.toString();
                                  print(selectServiceType);
                                  isServiceType = false;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    e.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: selectServiceType == e
                                            ? Colors.white
                                            : Styles.drawerListColor),
                                  ),
                                )),
                          ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  Widget patientPrefix() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isPrefix = !isPrefix;
                registerVM.getPatientPrefix();
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectPatientFrefix,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isPrefix
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.primaryColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isPrefix)
            Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: FutureBuilder(
                  future: registerVM.getPatientPrefix(),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                      );
                    } else {
                      return Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                /*onTap: () {
                                 // selectPatientFrefix = snapshot.data![index]?["Name"];
                                },*/
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.7, color: Colors.grey)),
                                    color: selectPatientFrefix ==
                                            snapshot.data![index]?["Name"]
                                        ? Styles.primaryColor
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: InkWell(
                                        onTap: () {
                                          selectPatientFrefix =
                                              snapshot.data![index]?["Name"];
                                          patientPrefixId =
                                              snapshot.data![index]?["Id"];
                                          print("id1 ${patientPrefixId}");
                                          print(
                                              "name123 ${selectPatientFrefix}");
                                          isPrefix = false;
                                          setState(() {
                                            patientPrefixId =
                                                snapshot.data![index]?["Id"];
                                            patientPrefixName =
                                                snapshot.data![index]?["Name"];
                                          });
                                        },
                                        child: Text(
                                            "${snapshot.data![index]?["Name"]}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: selectPatientFrefix ==
                                                        snapshot.data![index]
                                                            ?["Name"]
                                                    ? Colors.white
                                                    : Styles.drawerListColor))),
                                  ),
                                ),
                              );
                            }),
                      );
                    }
                  },
                )),
        ],
      ),
    );
  }

  Widget patientStatusWidget() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isStutus = !isStutus;
                registerVM.getPatientStatus();
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectPatientStatus,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isStutus
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.primaryColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isStutus)
            Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: FutureBuilder(
                  future: registerVM.getPatientStatus(),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                      );
                    } else {
                      return Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                /*  onTap: () {
                                  selectPatientStatus =
                                      snapshot.data![index]?["Name"];
                                },*/
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.7, color: Colors.grey)),
                                    color: selectPatientStatus ==
                                            snapshot.data![index]?["Name"]
                                        ? Styles.primaryColor
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: InkWell(
                                        onTap: () {
                                          selectPatientStatus =
                                              snapshot.data![index]?["Name"];
                                          isStutus = false;
                                          setState(() {
                                            patientStatusId =
                                                snapshot.data![index]?["Id"];
                                            patientStatusName =
                                                snapshot.data![index]?["Name"];
                                            print("Id $patientStatusId");
                                          });
                                        },
                                        child: Text(
                                            "${snapshot.data![index]?["Name"]}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: selectPatientStatus ==
                                                        snapshot.data![index]
                                                            ?["Name"]
                                                    ? Colors.white
                                                    : Styles.drawerListColor))),
                                  ),
                                ),
                              );
                            }),
                      );
                    }
                  },
                )),
        ],
      ),
    );
  }

  Widget patientRelationWidget() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isRelation = !isRelation;
                registerVM.getPatientRelation();
              });
            },
            child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2, color: Styles.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectPatientRelation,
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                      Icon(
                        isRelation
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_up,
                        color: Styles.primaryColor,
                      ),
                    ],
                  ),
                )),
          ),
          if (isRelation)
            Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: FutureBuilder(
                  future: registerVM.getPatientRelation(),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                      );
                    } else {
                      return Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                /*onTap: () {
                                  selectPatientRelation =
                                      snapshot.data![index]?["Name"];
                                },*/
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.7, color: Colors.grey)),
                                    color: selectPatientRelation ==
                                            snapshot.data![index]?["Name"]
                                        ? Styles.primaryColor
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: InkWell(
                                        onTap: () {
                                          selectPatientRelation =
                                              snapshot.data![index]?["Name"];
                                          isRelation = false;
                                          setState(() {
                                            patinetRelationId =
                                                snapshot.data![index]?["Id"];
                                            patientRelationName =
                                                snapshot.data![index]?["Name"];
                                            print("Id $patinetRelationId");
                                          });
                                        },
                                        child: Text(
                                            "${snapshot.data![index]?["Name"]}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: selectPatientRelation ==
                                                        snapshot.data![index]
                                                            ?["Name"]
                                                    ? Colors.white
                                                    : Styles.drawerListColor))),
                                  ),
                                ),
                              );
                            }),
                      );
                    }
                  },
                )),
        ],
      ),
    );
  }

  Widget DateOfBrithWidget() {
    return Container(
      padding: EdgeInsets.all(6),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 2, color: Styles.primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${dateOfBirth.toString()}',
              style: TextStyle(fontSize: 16, color: Styles.primaryColor)),
          InkWell(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    //get today's date
                    firstDate: DateTime(1920),
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
                    dateOfBirth =
                        formattedDate; //set foratted date to TextField value.
                    print("${dateOfBirth}");
                  });
                } else {
                  print("Date is not selected");
                }
              },
              child: Image.asset('assets/icons/calendar.png')),
        ],
      ),
    );
  }

  final picker = ImagePicker();
  void showImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Card(
            color: Styles.primaryColor,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.2,
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: InkWell(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.image,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Gallery",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.pop(context);
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: SizedBox(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.camera_alt,
                              size: 60.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              "Camera",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.pop(context);
                      },
                    ))
                  ],
                )),
          );
        });
  }

  _imgFromGallery() async {
    await picker
        .pickImage(source: ImageSource.gallery, imageQuality: 50)
        .then((value) {
      if (value != null) {
        _cropImage(File(value.path));
      }
    });
  }

  _imgFromCamera() async {
    await picker
        .pickImage(source: ImageSource.camera, imageQuality: 50)
        .then((value) {
      if (value != null) {
        _cropImage(File(value.path));
      }
    });
  }

  _cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
        sourcePath: imgFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: "Image Cropper",
              toolbarColor: Styles.primaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: "Image Cropper",
          )
        ]);
    if (croppedFile != null) {
      imageCache.clear();
      setState(() {
        imageFile = File(croppedFile.path);
        print("object ${imageFile}");
      });
      // reload();
    }
  }
}
