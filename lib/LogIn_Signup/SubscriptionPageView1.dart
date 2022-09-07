import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';

class SubscriptionPageView1 extends StatefulWidget {
  @override
  State<SubscriptionPageView1> createState() => _SubscriptionPageView1State();
}

class _SubscriptionPageView1State extends State<SubscriptionPageView1> {
  bool maleSelected = false;
  bool femaleSelected = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.lightBlueAccent.withOpacity(0.2),
            Colors.blueAccent.shade100,
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
                  'EncoreQuelqueEtapes'.tr,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.blueAccent,
                  ),
                  colors: [
                    Color(0xFF1D2860),
                    Colors.blueAccent,
                  ],
                ),
              ],
              isRepeatingAnimation: false,
              repeatForever: false,
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'FirstName'.tr,
                    hintStyle:
                    TextStyle(
                      color: Color(0xFF1D2860),
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(color: Color(0xFF1D2860), fontSize: 14.5),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'LastName'.tr,
                    hintStyle:
                    TextStyle(
                      color: Color(0xFF1D2860),
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.badge,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'ID'.tr,
                    hintStyle:
                    TextStyle(color: Color(0xFF1D2860), fontSize: 14.5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'Phone'.tr,
                    hintStyle:
                    TextStyle(
                      color: Color(0xFF1D2860),
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.place,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    suffixIconConstraints:
                    BoxConstraints(minWidth: 45, maxWidth: 46),
                    border: InputBorder.none,
                    hintText: 'Adresse'.tr,
                    hintStyle:
                    TextStyle(
                      color: Color(0xFF1D2860),
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 14.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      maleSelected = true;
                      femaleSelected = false;
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
                              border: Border.all(color: Color(0xFF1D2860),)),
                          child: maleSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF1D2860),),
                          )
                              : SizedBox()),
                      Text('Male'.tr,
                          style: TextStyle(
                            color: Color(0xFF1D2860),
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
                      femaleSelected = true;
                      maleSelected = false;
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
                              border: Border.all(color: Color(0xFF1D2860),)),
                          child: femaleSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF1D2860),),
                          )
                              : SizedBox()),
                      Text('Female'.tr,
                          style: TextStyle(
                            color: Color(0xFF1D2860),
                            fontFamily: 'Comfortaa',
                            fontStyle: FontStyle.normal,
                            fontSize: 14.5,
                          ),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
