import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:untitled/Constants/Colors.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SubscriptionPageView1 extends StatefulWidget {
  @override
  State<SubscriptionPageView1> createState() => _SubscriptionPageView1State();
}

class _SubscriptionPageView1State extends State<SubscriptionPageView1> {
  bool maleSelected = false;
  bool femaleSelected = false;
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  String initialCountry = 'IL';
  PhoneNumber number = PhoneNumber(isoCode: 'IL');
  bool israelien = false;
  bool noIsraelien = false;


  @override
  void dispose() {
    controller2.dispose();
    super.dispose();
  }
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
                  'Start'.tr,
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
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        israelien = true;
                        noIsraelien = false;
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
                                border: Border.all(color: Colors.blue.shade900,)),
                            child: israelien
                                ? Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900,),
                            )
                                : SizedBox()),
                        Text('Israelien'.tr,
                          style: normalBlueFonceStyle)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        israelien = false;
                        noIsraelien = true;
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
                                border: Border.all(color: Colors.blue.shade900,)),
                            child: noIsraelien
                                ? Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900,),
                            )
                                : SizedBox()),
                        Text('Pas encore Israelien'.tr,
                          style: normalBlueFonceStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            israelien ? Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(9)
                ],

                keyboardType: TextInputType.numberWithOptions(decimal: false),

                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    labelText: 'ID'.tr,
                    labelStyle: normalBlueFonceStyle,
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.badge,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
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
            ): SizedBox(width: 1,),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    labelText: 'FirstName'.tr,
                    labelStyle: normalBlueFonceStyle,
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
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
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Color(0xFF1D2860), fontSize: 14.5),
                decoration: InputDecoration(
                    labelText: 'LastName'.tr,
                    labelStyle: normalBlueFonceStyle,
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    border: InputBorder.none,
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
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  color: Color(0xFF1D2860),
                  fontFamily: 'Comfortaa',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.5,
                ),
                decoration: InputDecoration(
                    labelText: 'Adresse'.tr,
                    labelStyle: normalBlueFonceStyle,
                    prefixIconConstraints: BoxConstraints(minWidth: 45),
                    prefixIcon: Icon(
                      Icons.place,
                      color: Color(0xFF1D2860),
                      size: 22,
                    ),
                    suffixIconConstraints:
                    BoxConstraints(minWidth: 45, maxWidth: 46),
                    border: InputBorder.none,
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
              padding: EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Color(0xFF1D2860)),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                inputDecoration: InputDecoration(
                    labelText: 'Phone'.tr,
                    labelStyle: normalBlueFonceStyle,
                    suffixIconConstraints:
                    BoxConstraints(minWidth: 45, maxWidth: 46),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860).withAlpha(100),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(bottomRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        borderSide: BorderSide(color: Color(0xFF1D2860),))
                ),
                inputBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFF1D2860),)),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
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
