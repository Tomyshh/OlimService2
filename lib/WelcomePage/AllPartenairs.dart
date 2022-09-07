import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../Constants/Colors.dart';
import 'package:delayed_display/delayed_display.dart';

class AllPartenairs extends StatelessWidget {
  const AllPartenairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A92E6),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text('Partner'.tr, style: bigBoldWhiteStyle,)
          ),SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20),
            child: Text('SousTitreAllPartner'.tr, style: smallWhiteStyle,),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
              child: Center(
                child: ListView(
                  children: [
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
              ),
            ),
          )
        ],
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

