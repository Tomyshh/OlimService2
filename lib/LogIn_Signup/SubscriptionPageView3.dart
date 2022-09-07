import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/LogIn.dart';

class SubscriptionPageView3 extends StatefulWidget {
  @override
  State<SubscriptionPageView3> createState() => _SubscriptionPageView1State();
}

class _SubscriptionPageView1State extends State<SubscriptionPageView3> {
  bool maleSelected = false;

  bool femaleSelected = false;

  bool isPasswordVisible = false;

  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
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
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: AnimatedTextKit(
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
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 14.5),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'Married'.tr,
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
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
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
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 14.5),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'Mail'.tr,
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
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(color: Color(0xFF008FD7), fontSize: 14.5),
                obscureText: isPasswordVisible ? false : true,
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF008FD7),
                      size: 22,
                    ),
                    suffixIconConstraints:
                    BoxConstraints(minWidth: 45, maxWidth: 46),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFF008FD7),
                        size: 22,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Password'.tr,
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 14.5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0)),
                        borderSide: BorderSide(color: Color(0x80008FD7))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF008FD7)))),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(color: Color(0xFF008FD7), fontSize: 14.5),
                obscureText: isConfirmPasswordVisible ? false : true,
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF008FD7),
                      size: 22,
                    ),
                    suffixIconConstraints:
                    BoxConstraints(minWidth: 45, maxWidth: 46),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmPasswordVisible =
                          !isConfirmPasswordVisible;
                        });
                      },
                      child: Icon(
                        isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFF008FD7),
                        size: 22,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'ConfirmPassword'.tr,
                    hintStyle:
                    TextStyle(color: Color(0xFF008FD7), fontSize: 14.5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0)),
                        borderSide: BorderSide(color: Color(0x80008FD7))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF008FD7)))),
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
                              border: Border.all(color: Color(0xFF008FD7))),
                          child: maleSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF008FD7)),
                          )
                              : SizedBox()),
                      Text('Male'.tr,
                          style: TextStyle(
                              color: Color(0xFF008FD7), fontSize: 14.5))
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
                              border: Border.all(color: Color(0xFF008FD7))),
                          child: femaleSelected
                              ? Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF008FD7)),
                          )
                              : SizedBox()),
                      Text('Female'.tr,
                          style: TextStyle(
                              color: Color(0xFF008FD7), fontSize: 14.5))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
