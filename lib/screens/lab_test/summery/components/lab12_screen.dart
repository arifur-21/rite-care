

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ritecare_hms/screens/lab_test/summery/summery_screen.dart';

import '../../../../utils/color_styles.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/drawer_widget.dart';
import '../../../../widgets/rounded_button.dart';

class Lab12Screen extends StatefulWidget {
  const Lab12Screen({Key? key}) : super(key: key);

  @override
  State<Lab12Screen> createState() => _Lab12ScreenState();
}

class _Lab12ScreenState extends State<Lab12Screen> {

  File? imageFile;

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
              ///popup menu item
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                      Text("IMAGING DETAIL",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                      InkWell(
                          onTap: (){
                         //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PatientSummeryScreen()));
                          },
                          child: Icon(Icons.cancel_presentation, size: 40,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Text("Upload New Image",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey) ),
                  SizedBox(height: 10,),
                  Text("Max File size is 10MB", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 20,),



              Stack(
                children: [
                  Positioned(
                    child: imageFile == null
                        ? Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Colors.grey),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                            AssetImage('assets/images/profile.png'), ),
                      ),
                    )
                        : Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                          Border.all(width: 2, color: Colors.grey)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            imageFile!,
                            height: 180,
                            width: 180,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),

                ],
              ),
      SizedBox(height: 29,),

      RoundedButton(width: Get.width * 0.6, title: 'Take/Upload image', color: Styles.primaryColor,  onTap: () async {
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

      ),


            ],
          ),
        ),
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
