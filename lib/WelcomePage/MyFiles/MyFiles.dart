import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/Constants/Colors.dart';

class MyFiles extends StatefulWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A92E6),
      body: ListView(
        children: <Widget>[
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
                IconButton(
                  icon: Icon(Icons.note_add,),
                  color: Colors.white,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'MyDocs'.tr,
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.blueAccent,
                  ),
                  colors: [
                    Colors.white,
                    Colors.blueAccent,
                  ],
                ),
              ],
              isRepeatingAnimation: false,
              repeatForever: false,
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ListView(
                physics: ScrollPhysics(),
                primary: false,
                children: <Widget>[
                  MyDocContainer(
                    prefixIcon: Icons.badge,
                    text: "Carte d'identité".tr,
                  ),
                  SizedBox(height: 10,),
                  MyDocContainer(
                    prefixIcon: Icons.badge,
                    text: "Teoudat Olé".tr,
                  ),
                  SizedBox(height: 10,),
                  MyDocContainer(
                    prefixIcon: Icons.badge,
                    text: "Carte grise".tr,
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyDocContainer extends StatelessWidget {
  final dynamic prefixIcon;
  final String text;

  MyDocContainer({
    Key? key,
    required this.prefixIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x343A92E6),
          borderRadius: BorderRadius.circular(50),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              prefixIcon,
              color: Color(0xFF3A92E6),
            ),
            Text(
              text,
              style: normalBoldBlueStyle,
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xFF3A92E6),
            ),
          ],
        ),
      ),
    );
  }
}
