
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/patinet_list_model/patient_list_model.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import '../../../data/response/status.dart';
import '../../../function/function_class.dart';
import '../../../local_db/boxes/boxes.dart';
import '../../../local_db/search_user_model.dart';
import '../../../view_model/patient_list_view_model/patient_list_view_model.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/drawer_widget.dart';
import '../../../widgets/popup_button_widget.dart';
import '../patient_info/patien_info_screen.dart';
import 'components/patient_card_list_view_widget.dart';
import 'components/patient_list_filter_widget.dart';


class PatientListScreen extends StatefulWidget {
  const PatientListScreen({Key? key}) : super(key: key);

  @override
  State<PatientListScreen> createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {

  final patinetListVM = Get.put(PatientListViewModel());
  dynamic totalPatient;
  dynamic dob;

  final scrollController = ScrollController();
  int page = 1;
  List<Items> itemsData= [];

  @override
  void initState() {
    patinetListVM.startDate = null;
    patinetListVM.endDate = null;
    patinetListVM.getPatientList(isRefreshed: true);
    scrollController.addListener(_scrollListener);

   itemsData?.addAll(patinetListVM.patientList.value.items?.toList()?? []);

    super.initState();
  }

  void _scrollListener() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      print("another page called");
      await patinetListVM.getPatientList(isRefreshed: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:DrawerWidget(),
      ),

      appBar: AppBar(
          backgroundColor: Styles.primaryColor,
          actions: [
          AppBarWidget(),
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [

              SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Get.width * 0.4,
              height: 80,
              child: Card(
                color: Colors.greenAccent,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 40,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Patient :"),
                          SizedBox(height: 6,),
                          Obx(() {
                            return   Text("${patinetListVM.patientList.value.total}");

                          }),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            PatientListFilterWidget(),

          ],
        ),
            SizedBox(height: 20,),

        Expanded(
          child: Obx ((){
            switch(patinetListVM.rxRequestStatus.value){
              case Status.LOADING:
                return Center(child:  CircularProgressIndicator(),);

              case Status.ERROR:
                print("error ${patinetListVM.error.value.toString()}");
                return Text(patinetListVM.error.value.toString());

              case Status.SUCCESS:
                if(patinetListVM.items.length == null){
                  return Text("item not found, please select date");
                }else{
                  return ListView.builder (
                      controller: scrollController,
                    //  shrinkWrap: true,
                      itemCount: patinetListVM.items.length +1,
                      itemBuilder: (context, index){
                        if (index == patinetListVM.items.length) {
                          return patinetListVM.hasReachedMax.value
                              ? const SizedBox()
                              : const Center(
                              child: CircularProgressIndicator());
                        }
               if (index < patinetListVM.items.length) {
                    return Column(
        children: [
          PatientCartListViewWidgets(
              patientId: patinetListVM.items![index].id.toString(),
              PatientName: patinetListVM.items![index].firstName.toString(),
              DateOfBirth: patinetListVM.items![index].dOB,
              onTap: (){

                setState(() {
                  final data = SearchUserModel(
                    id:  patinetListVM.items![index].id,
                    cellNo: patinetListVM.items![index].phoneNumber,
                    name:patinetListVM.items![index].firstName,
                    officalNo: patinetListVM.items![index].serviceId,
                    patientId: patinetListVM.items![index].id,
                    gender: patinetListVM.items![index].gender?.name,
                    email: patinetListVM.items![index].email,
                    dob: patinetListVM.items![index].dOB,
                    bloodGroup: patinetListVM.items![index].bloodGroup,
                    mobile: patinetListVM.items![index].phoneNumber,
                    emergencyContact: patinetListVM.items![index].emergencyNumber,
                    emergencyRelation: patinetListVM.items![index].emergencyContactRelation,
                    relationship: patinetListVM.items![index].relationship?.name,
                    rank: patinetListVM.items![index].rank?.name,
                    unit: patinetListVM.items![index].unit?.name,
                    patienStatus: patinetListVM.items![index].patientStatus,
                    patientPrefix: patinetListVM.items![index].patientPrefix?.name,
                  );
                  final box = Boxes.getData();
                  box.put("id", data);
                  data.save();
                  print("hive ${box.length}");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientInfoScreen(
                    isInfoVisible: 1,
                  )));

                });


              })
        ],
      );
                     }
                         return SizedBox();


                      });
                }
            }
          }),
        )
          ],
        ),
      ),

    );
  }
}
