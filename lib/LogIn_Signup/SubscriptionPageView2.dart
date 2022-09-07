import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';

class SubscriptionPageView2 extends StatefulWidget {
  @override
  State<SubscriptionPageView2> createState() => _SubscriptionPageView1State();
}

class _SubscriptionPageView1State extends State<SubscriptionPageView2> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  String ? dropdownvalue = 'Maccabi';
  var items = [
    'Maccabi',
    'Clalit',
    'Meoukhedet',
    'Orange',
    'abricot',
    'Melon'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.blueAccent.shade100,
            Colors.blueAccent.shade200,
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
                  'BientotTermine'.tr,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.blueAccent,
                  ),
                  colors: [
                  Colors.white,
                    Colors.deepPurpleAccent,
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
                style: TextStyle(color: Colors.white, fontSize: 14.5),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.cake,
                      color: Colors.white,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'Birth'.tr,
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
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintText: 'Mail'.tr,
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
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                obscureText: isPasswordVisible ? false : true,
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
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
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Password'.tr,
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
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                obscureText: isConfirmPasswordVisible ? false : true,
                decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.verified_user,
                      color: Colors.white,
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
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'ConfirmPassword'.tr,
                    hintStyle:
                    TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
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
            ),
            SizedBox(
              height: 30,
            ),


            Row(
              children: [
                SizedBox(width : 40,),
                Icon(Icons.medical_services,
                color : Colors.white),
                SizedBox(width: 40,),
                Container(
                  width: 210,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width:2),
                          borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left:30, right:30),
                          child:DropdownButton(
                            value: dropdownvalue,
                            items: [ //add items in the dropdown
                              DropdownMenuItem(
                                child: Text("Maccabi"),
                                value: "Maccabi",
                              ),
                              DropdownMenuItem(
                                  child: Text("Clalit"),
                                  value: "Clalit"
                              ),
                              DropdownMenuItem(
                                child: Text("Meoukhedet"),
                                value: "Meoukhedet",
                              )
                            ],
                            onChanged: (String ? value){ //get value when changed
                              print("You have selected $value");
                              setState(() {
                                dropdownvalue = value!;
                              });
                            },
                            icon: Padding( //Icon at tail, arrow bottom is default icon
                                padding: EdgeInsets.only(left:20),
                                child:Icon(Icons.expand_more)
                            ),
                            iconEnabledColor: Colors.white, //Icon color
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                            ),
                            dropdownColor: Colors.blueAccent, //dropdown background color
                            underline: Container(), //remove underline
                            isExpanded: true, //make true to make width 100%
                          )
                      )
                  ),
                ),
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
