import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ritecare_hms/model/ot_management_model/surgery_note_model.dart';

import '../../data/response/status.dart';
import '../../model/ot_management_model/ot_list_model.dart';
import '../../utils/color_styles.dart';
import '../../view_model/ot_management_view_model/ot_details_view_model.dart';
import '../../view_model/ot_management_view_model/ot_list_view_model.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/reuseable_text_filed.dart';
import '../search_screen/conponents/search_list_widget.dart';
import 'Ot_management_screen.dart';


class OtManagementDetailsScreen extends StatefulWidget {
  dynamic noteId;
  dynamic id;
  dynamic userId;



  OtManagementDetailsScreen({this.noteId, this.id, this.userId});

  @override
  State<OtManagementDetailsScreen> createState() => _OtManagementDetailsScreenState();
}

class _OtManagementDetailsScreenState extends State<OtManagementDetailsScreen> {
  List<dynamic> listController = [];
 // final otListVM = Get.put(OtListViewModel());
  final otDetailsVM = Get.put(OtDetailsVewModel());
  dynamic userId;
  dynamic id;


  @override
  void initState() {

    otDetailsVM.getSurgerNoteData();
    otDetailsVM.id = widget.noteId;


    super.initState();
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),


////////////// get note data
            Expanded(
              child: FutureBuilder(
                future: otDetailsVM.getSurgerNoteData(),
                  builder: (context, snapShot){
                    return  Obx((){
                      switch(otDetailsVM.rxRequestStatus.value){
                        case Status.LOADING:
                          return Center(child:  CircularProgressIndicator(),);

                        case Status.ERROR:
                          print("error ${otDetailsVM.error.value.toString()}");
                          return Center(child: Text("item not found",style: TextStyle(fontSize: 20),));

                        case Status.SUCCESS:
                          if(otDetailsVM.surgeryNoteItem.value.length == null ){
                            print("data not found");
                            return Text("data not found");
                          }
                          else{
                            return ListView.builder(
                                shrinkWrap: true,
                                itemCount: otDetailsVM.surgeryNoteItem.value.length,
                                itemBuilder: (context, index){
                                  return Column(
                                    children: [
                                      Card(
                                        elevation: 6,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("${otDetailsVM.surgeryNoteItem[index].note}", style: TextStyle(fontSize: 20),),
                                                  Row(
                                                    children: [
                                                      InkWell (
                                                          onTap: (){
                                                            showEditAlertDialog(context, index,otDetailsVM.surgeryNoteItem[index].note);

                                                            //Navigator.pop(context);
                                                          },
                                                          child: Container(
                                                            height: 25,
                                                            width: 25,
                                                            decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage('assets/icons/edit.png')
                                                              ),
                                                            ),
                                                          ),),
                                                      SizedBox(width: 15,),
                                                      InkWell(
                                                          onTap: (){
                                                            otDetailsVM.deleteSurgeryNote(
                                                              otDetailsVM.surgeryNoteItem[index].surgeryId,
                                                              otDetailsVM.surgeryNoteItem[index].id,
                                                              otDetailsVM.surgeryNoteItem[index].userId,
                                                            );

                                                           // otListVM.getSurgerNoteData();
                                                          },
                                                          child: Icon(Icons.delete, size: 30,)),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }
                      }
                    });
                  }),
            ),



            const SizedBox(
              width: 10,
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor:  Styles.primaryColor,
        child: Icon(Icons.add,),
        onPressed: () {
            setState(() {
              showAlertDialog(context);
            });
        },
      ),
    );
  }

  showAlertDialog(BuildContext context) {



    AlertDialog alert = AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Add Note"),
          InkWell(
              onTap: (){
                setState(() {
                  otDetailsVM.getSurgerNoteData();
                });

                Navigator.pop(context);
              },
              child: Icon(Icons.cancel_presentation, size: 30, color: Colors.red,))
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: Get.width * 0.8 ,
            child: ResuableTextField(
                controllerValue: otDetailsVM.surgeryNoteController.value,
                hintText: "Test")),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
              onTap: (){
                setState(() {
                  otDetailsVM.surgeryNotePost(widget.noteId, widget.id, widget.userId);
                  otDetailsVM.surgeryNoteController.value.clear();
                });

               Navigator.pop(context);
              },
              child: Icon(Icons.save, size: 40, color: Styles.primaryColor,)),
        )
        // cancelButton,
        // continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showEditAlertDialog(BuildContext context, int index, dynamic note)  {

    otDetailsVM.surgeryNoteController.value.text = note;
   AlertDialog alert = AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text("Update Note"),
          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.cancel_presentation, size: 30, color: Colors.red,))
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            width: Get.width * 0.8 ,
            child: ResuableTextField(
                controllerValue: otDetailsVM.surgeryNoteController.value,
                hintText: "Test")),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
              onTap: (){
                setState(() {
                  otDetailsVM.editSurgeryNote(widget.noteId, otDetailsVM.surgeryNoteItem[index].id);

                });

                Navigator.pop(context);

             //   print("note ${note}");
              },
              child: Icon(Icons.save, size: 40, color: Styles.primaryColor,)),
        )
        // cancelButton,
        // continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}



