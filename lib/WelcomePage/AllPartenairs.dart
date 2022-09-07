import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../Constants/Colors.dart';
import 'package:delayed_display/delayed_display.dart';

class AllPartenairs extends StatelessWidget {
  const AllPartenairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 90),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'TypeOfRDV'.tr,
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Comfortaa',
                            color: Colors.blueAccent,
                          ),
                          colors: [
                            Colors.deepPurpleAccent,
                            Colors.blueAccent,
                          ],
                        ),
                      ],
                      isRepeatingAnimation: false,
                      repeatForever: false,
                    ),
                  ),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: 'Construction'.tr,
                        color: Color(0xFF2EBCFA),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "RealEstate".tr,
                        color: Color(0xFF2EBCFA),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Plumber".tr,
                        color: Color(0xFF34ABFF)
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Info".tr,
                        color: Color(0xFF34ABFF)
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Assurance".tr,
                        color: Color(0xFF318AFE),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Juridique".tr,
                        color: Color(0xFF318AFE),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Tel2".tr,
                        color: Color(0xFF566AFF),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Bank".tr,
                        color: Color(0xFF566AFF),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Electric".tr,
                        color: Color(0xFF745EFF),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Cours particulier",
                        color: Color(0xFF745EFF),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Climatisation".tr,
                        color: Color(0xFF8358FF),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Vitre".tr,
                        color: Color(0xFF8358FF),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      MyPartenairsButton(
                        text: "Electromenager".tr,
                        color: Color(0xFF9F4FFE),
                      ),
                      SizedBox(width: 3,),
                      MyPartenairsButton(
                        text: "Internet".tr,
                        color: Color(0xFF9F4FFE),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyPartenairsButton extends StatelessWidget {
  final String text;
  final dynamic color;
MyPartenairsButton({Key? key,
  required this.text,
  required this.color,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60).copyWith(
              bottomRight: Radius.circular(60),
              topLeft: Radius.circular(60)),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightBlueAccent,
                Colors.blueAccent,
              ]
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 5,
              spreadRadius: 5,
              color:
              Colors.black12, //Colors.black12.withOpacity(0.2)
            ),
          ]),
      height: 60,
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
                Color(0xFF2C4ED2)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30).copyWith(
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
            ),
            backgroundColor:
            MaterialStateProperty.all(color)),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text.tr,
            style: normalWhiteStyle,
          ),
        ),
      ),
    );
  }
}

