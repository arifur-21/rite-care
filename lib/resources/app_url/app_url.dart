
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../shere_preference/login_preference.dart';

class AppUrl {


 LoginPreference loginPreference = LoginPreference();

 static String url = '';

/*   void sendEmail() async {
    await loginPreference.getSendEmail().then((value) {

     url = value.sendEamil;
     print("uri base11 ${url}");
    });
    print("url1 ${url}");

   }*/

 static String base_url = "https://mobileapp.rite-hms.com"; // 'https://mobileapp.rite-hms.com';



 static  String loginApi = '$base_url/auth/token';
 static  String forgotPassword = '$base_url/Login/SendForgotPasswordURL';

 static  String registerPatientApi = '$base_url/Patient/CreatePatient';
 static  String registerUpdateApi = '$base_url/Patient/UpdatePatient';
 static  String getPatientByidUrl = '$base_url/Patient/GetPatientById?id=775898&oldId=false';
 static  String getPatientByIBaseUrl = '$base_url/Patient/GetPatientById?id=775898&oldId=false';
 static  String getGenderApi = '$base_url/Gender/GetAllAsync';
 static  String patientPrefixurl = "$base_url/Patient/GetPatientPrefix";
 static  String patientStatusurl ='$base_url/Patient/GetPatientStatus';
 static  String patientRelationurl ='$base_url/Patient/GetAllRelationshipList';
 static  String patientListUrl ='$base_url/Patient/GetPatientList?pageNumber=1&pageSize=25&startDate=undefined&endDate=undefined&unitId=null&bloodGroupId=null';
 static  String patientSummeryListUrl ='$base_url/Item/GetPatientInvoicebyMedicalType?id=775925&statusid=0&medicalTypeID=62&DateStart=2023-03-04&DateEnd=2023-04-09&pageNumber=1&pageSize=25&invoiceId=undefined&sampleId=null&itemId=undefined';
 static  String userProfile =  '$base_url/Login/GetLoggedinUser';
 static  String otScheduleUrl =  '$base_url/OT/GetOperationScheduleList?pageNumber=1&pageSize=150&startDate=2023-04-18&endDate=2023-04-18&patientId=0&isMobileApp=true';
 static  String surgeryNoteUrl =  '$base_url/OT/SaveSurgeryNote';
 static  String labTestListUrl =  '$base_url/Item/GetLabItemsByMedicalType?medicalTypeID=62&pageNumber=1&pageSize=25&categoryId=null&searchTerm=&allData=undefined&ItemId=0&isLabItemSerialNo=false';
 static  String getsurgeryNoteUrl =  '$base_url/OT/GetSurgeryNotes?surgeryId=50420';
 static  String getAlLabStatusUrl =  '$base_url/Item/GetAllLabStatus';
 static  String getBloodGroutUrl =  '$base_url/Blood/GetAllAsync';
 static  String getGenderUrl =  '$base_url/Gender/GetAllAsync';
 static  String surgeryNoteDeleteUrl =  '$base_url/OT/DeleteSurgeryNote';
 static  String updatePatientServiceMarkAsPrintUrl =  '$base_url/Item/UpdatePatientServiceMarkAsPrint';
 static  String operationScheduleStatusUrl =  '$base_url/OT/SaveOperationSchedule';
 static  String sampleListFilterStatusUrl =  '$base_url/Item/GetAllLabStatus';
 static  String labTestListFilterStatusUrl =  '$base_url/Item/loadLabTestCategories?medicalTypeID=62';

 static String saveEditLabRREsultUrl = '$base_url/Item/SaveEditLabReportResult';
 static String loggedInUserDataUrl = '$base_url/Login/GetLoggedinUser';



}
