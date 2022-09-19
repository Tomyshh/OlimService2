import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';
import 'package:get/get.dart';
import 'package:untitled/Constants/Colors.dart';

class DrivingLicense extends StatefulWidget {
  const DrivingLicense({Key? key}) : super(key: key);

  @override
  State<DrivingLicense> createState() => _DrivingLicenseState();
}

class _DrivingLicenseState extends State<DrivingLicense> {
  String? dropdownvalue = 'DrivingLicense'.tr;
  var items = [
    'DrivingLicense'.tr,
    'DrivingLicenseInter'.tr,
    'Assurance'.tr,
    'RentCar'.tr,
    'PasserPermis'.tr,
    'TestAnnuel'.tr,
    'CarteGrise'.tr,
    'Other'.tr,
  ];
  String? dropdownvalue1 = 'Myself'.tr;
  var items1 = [
    'Myself'.tr,
    'MyWife'.tr,
    'MyFather'.tr,
    'MyMother'.tr,
    'MySon'.tr,
    'MyDaughter'.tr
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A92E6),
      body: ListView(children: [
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
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                width: 70,
                height: 50,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Car'.tr,
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
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 40.0,right: 20),
          child: Text("SousTitreCar".tr, style: smallWhiteStyle,),
        ),
        SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
          ),
          child: ListView(
            physics: ScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text('TypeOfRequest'.tr, style: smallBoldBlueStyle),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 215,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFF3A92E6), width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(items[0]),
                                    value: items[0],
                                  ),
                                  DropdownMenuItem(
                                      child: Text(items[1]), value: items[1]),
                                  DropdownMenuItem(
                                    child: Text(items[2]),
                                    value: items[2],
                                  ),
                                  DropdownMenuItem(
                                    child: Text(items[3]),
                                    value: items[3],
                                  ),
                                  DropdownMenuItem(
                                    child: Text(items[4]),
                                    value: items[4],
                                  ),
                                  DropdownMenuItem(
                                    child: Text(items[5]),
                                    value: items[5],
                                  ),
                                  DropdownMenuItem(
                                    child: Text(items[6]),
                                    value: items[6],
                                  ),

                                ],
                                onChanged: (String? value) {
                                  //get value when changed
                                  print("You have selected $value");
                                  setState(() {
                                    dropdownvalue = value!;
                                  });
                                },
                                icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.expand_more)),
                                iconEnabledColor:
                                Color(0xFF3A92E6), //Icon color
                                style: smallBoldBlueStyle,
                                dropdownColor:
                                Colors.white, //dropdown background color
                                underline: Container(), //remove underline
                                isExpanded:
                                true, //make true to make width 100%
                              ))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text('Who'.tr, style: smallBoldBlueStyle),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 215,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFF3A92E6), width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: DropdownButton(
                                value: dropdownvalue1,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(items1[0]),
                                    value: items1[0],
                                  ),
                                  DropdownMenuItem(
                                      child: Text(items1[1]),
                                      value: items1[1]),
                                  DropdownMenuItem(
                                    child: Text(items1[2]),
                                    value: items1[2],
                                  ),
                                  DropdownMenuItem(
                                      child: Text(items1[3]),
                                      value: items1[3]),
                                  DropdownMenuItem(
                                      child: Text(items1[4]),
                                      value: items1[4]),
                                  DropdownMenuItem(
                                    child: Text(items1[5]),
                                    value: items1[5],
                                  ),
                                ],
                                onChanged: (String? value1) {
                                  //get value when changed
                                  print("You have selected $value1");
                                  setState(() {
                                    dropdownvalue1 = value1!;
                                  });
                                },
                                icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.expand_more)),
                                iconEnabledColor:
                                Color(0xFF3A92E6), //Icon color
                                style: smallBoldBlueStyle,
                                dropdownColor:
                                Colors.white, //dropdown background color
                                underline: Container(), //remove underline
                                isExpanded:
                                true, //make true to make width 100%
                              ))),
                    ),
                  ],
                ),
              ),


              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Color(0xFF3A92E6),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: smallBoldBlueStyle,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Note'.tr,
                      hintStyle: smallBlueStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              FloatingActionButton(
                splashColor: Colors.blue,
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.send,
                    size: 25,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3A92E6),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
