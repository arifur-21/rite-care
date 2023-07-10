
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/resources/routes/routes.dart';
import 'package:ritecare_hms/screens/login_screen/send_email_screen.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import '../../../widgets/rounded_button.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  int currentIndex = 0;
  final PageController controller = PageController();
  String next = 'Next';
  bool isToggle = false;


  List<String> images = [
  "assets/images/first_slider.png",
  "assets/images/second_slider.png",
  "assets/images/third_slider.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       /* appBar: AppBar(

          backgroundColor: ColorStyles.primaryColor,
        ),*/
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Container(
                height: Get.height * 0.8,
                width: double.infinity,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index % images.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        child: Container(
                            width: double.infinity,
                            child: Image.asset(
                              images[index % images.length],
                            )
                        ),

                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment:   isToggle == false ? MainAxisAlignment.end : MainAxisAlignment.center ,
                      children: [

                        TextButton(
                          onPressed: () {
                            if(currentIndex == 1)
                            {
                              setState(() {
                                isToggle = !isToggle;
                              });
                              next = "Get Started";
                            }
                            if(currentIndex == 2){

                            }
                            else{
                              controller.jumpToPage(currentIndex + 1);
                            }
                          },
                          child: isToggle == false ? Row(
                            children: [
                              Text(next, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Styles.textGreen),),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Styles.primaryColor,)
                            ],
                          ) : InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SendEmailScreen()));
                            //  Get.toNamed(RoutesName.sendEmalScreen);
                            },
                            child: Container(
                              width: Get.width * 0.5,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Styles.textGreen,
                              ),
                              child: Center(child: Text("Get Started", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)))
                            )
                          )


                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Styles.primaryColor : Colors.grey,
        ),
      ),
    );
  }

}