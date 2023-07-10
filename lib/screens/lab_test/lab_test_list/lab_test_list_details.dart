
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/color_styles.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/drawer_widget.dart';
import '../../../widgets/popup_button_widget.dart';
import 'lab_test_list_screen.dart';

class LabTestListDetailsScreen extends StatefulWidget {

  final dynamic testName;
  final dynamic category;
  final dynamic code;
  final dynamic reportSerialNO;
   dynamic labReportGroup = '';
  final dynamic refferCommission;
  final dynamic chargePrice;


  LabTestListDetailsScreen(
  {
      this.testName,
      this.category,
      this.code,
      this.reportSerialNO,
      this.labReportGroup,
      this.refferCommission,
      this.chargePrice});

  @override
  State<LabTestListDetailsScreen> createState() => _LabTestListDetailsScreenState();
}

class _LabTestListDetailsScreenState extends State<LabTestListDetailsScreen> {


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
          PopUpButtonWidget()
        ],
      ),
      body: Column(
        children: [

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(2)
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LABTEST ITEM DETAILS",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LatTestListScreen()));
                      },
                        child: Icon(Icons.cancel_presentation, size: 40,color: Colors.white,)),
                  ],
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Styles.primaryColor)
              ),
              child: Column(
                children: [

                  labTestItemDetails(categoroy:"Test Name", data: "${widget.testName}"),
                  labTestItemDetails(categoroy:"Category", data: "${widget.category}"),
                  labTestItemDetails(categoroy:"Code", data: "${widget.code}"),
                  labTestItemDetails(categoroy:"Report Serial No", data: "${widget.reportSerialNO}"),
                  labTestItemDetails(categoroy:"Lab Report Group", data: "${widget.labReportGroup}"),
                  labTestItemDetails(categoroy:"Referrer commission(tk)", data: "${widget.refferCommission}"),
                  labTestItemDetails(categoroy:"Charge price", data: "${widget.chargePrice}"),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


Widget labTestItemDetails({ dynamic data, dynamic categoroy}){
    return
      Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Styles.primaryColor),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Text("${categoroy}",style: Styles.poppinsFontBlack12_600)),
                      Expanded(
                          flex: 1,
                          child: Text(":", style: Styles.poppinsFontBlack12_400)),

                      Expanded(
                        flex: 5,
                          child: Text("${data.toString()}",style: Styles.poppinsFontBlack12_300))
                    ],),
                ))

          ],
        ),
      );
}
}



