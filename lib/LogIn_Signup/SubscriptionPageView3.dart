import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';

class SubscriptionPageView3 extends StatefulWidget {
  @override
  State<SubscriptionPageView3> createState() => _SubscriptionPageView1State();
}

class _SubscriptionPageView1State extends State<SubscriptionPageView3> {
  bool singleSelected = false;
  bool marriedSelected = false;
  double constPadding = 30;

  @override
  Widget build(BuildContext context) {
    double doubleVar;
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade400,
          ]
      )),
      height: double.infinity,
      width: double.infinity,

      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'OnYEstPresque'.tr,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.blueAccent,
                  ),
                  colors: [
                    Colors.white,
                    Colors.blueAccent.shade700,
                  ],
                ),
              ],
              isRepeatingAnimation: false,
              repeatForever: false,
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      singleSelected = true;
                      marriedSelected = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: singleSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white),
                          )
                              : SizedBox()),
                      Text('Single'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                            fontStyle: FontStyle.normal,
                            fontSize: 14.5,
                          ),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      marriedSelected = true;
                      singleSelected = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: marriedSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white),
                          )
                              : SizedBox()),
                      Text('Married'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                            fontStyle: FontStyle.normal,
                            fontSize: 14.5,
                          ),)
                    ],
                  ),
                )
              ],
            ),
            marriedSelected ?
            Padding(
              padding:
                  EdgeInsets.only(top: 30,right: 30,left: 30),
             // EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: Column(
                children: [
                  Text('Information sur le conjoint :',
                    style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                  ),),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'FirstName'.tr,
                        hintStyle:
                        TextStyle(color: Colors.white, fontSize: 14.5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white38)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(color: Colors.white, fontSize: 14.5),
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'LastName'.tr,
                        hintStyle:
                        TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontStyle: FontStyle.normal,
                          fontSize: 14.5,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white38)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.badge,
                          color: Colors.white,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'ID'.tr,
                        hintStyle:
                        TextStyle(color: Colors.white, fontSize: 14.5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white38,)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white,))),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'Phone'.tr,
                        hintStyle:
                        TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontStyle: FontStyle.normal,
                          fontSize: 14.5,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white38)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                                .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white,))),
                  ),
                ],
              ),
            ): SizedBox(width: 1,),
            Padding(
              padding:
              EdgeInsets.only(top: 30,right: 30,left: 30),
              child: TextField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.child_care,
                      color: Colors.white,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'NumberChildren'.tr,
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 14.5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.white38)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
