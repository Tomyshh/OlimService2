import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/BottomNavigationBar/Help.dart';
import 'package:untitled/BottomNavigationBar/Notifications.dart';
import 'package:untitled/BottomNavigationBar/PageBeforeHomePage.dart';
import 'package:untitled/BottomNavigationBar/Settings.dart';
import 'package:untitled/Constants/Colors.dart';
import 'package:untitled/WelcomePage/MainPage.dart';
import 'package:untitled/WelcomePage/NewRequest/Conversations3/ConversationsTrois.dart';
import 'package:untitled/WelcomePage/NewRequest/DrivingLicense.dart';
import 'package:untitled/WelcomePage/NewRequest/FillDocument/FillDoc.dart';
import 'package:untitled/WelcomePage/NewRequest/MakeAbonnement/Abbo.dart';
import 'package:untitled/WelcomePage/NewRequest/MakeAppointment/RDV.dart';
import 'package:untitled/WelcomePage/NewRequest/Other/Autres.dart';
import 'package:untitled/WelcomePage/NewRequest/PayOnline/PayOnline.dart';
import 'package:untitled/WelcomePage/NewRequest/Translate/Translate.dart';
import 'package:untitled/WelcomePage/NewRequest/WriteMessage/RedigerMessage.dart';
import 'package:untitled/widgets/discover_small_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NouvelleDemande extends StatefulWidget {
  const NouvelleDemande({Key? key}) : super(key: key);

  @override
  State<NouvelleDemande> createState() => _NouvelleDemandeState();
}

class _NouvelleDemandeState extends State<NouvelleDemande> {
  List<Widget> pages = [
    DiscoverPage(),
    const SettingsPage(),
    const Notifications(),
    const HelpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3A92E6), //Color(0xff121421),
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
              height: 25,
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                  'NewRequest'.tr,
                  style: bigBoldWhiteStyle,
                )),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                  'SousTitreNewRequest'.tr,
                  style: smallWhiteStyle,
                )),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 30),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 19.w,
                      mainAxisExtent: 130.w,
                      mainAxisSpacing: 19.w),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(3, 8))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF2EB8F9), // button color
                          child: InkWell(
                            splashColor: Colors.lightBlueAccent, // splash color
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: PayOnline(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.payment,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "PayOnline".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(-3, 8))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF2EB8F9), // button color
                          child: InkWell(
                            splashColor: Colors.lightBlueAccent,
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: Translate(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.translate,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "Translation".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(3, 4))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF3396FD), // button color
                          child: InkWell(
                            splashColor: Colors.lightBlueAccent,
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: RedigerMessage(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.drive_file_rename_outline,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "WriteMessage".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(-3, 4))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF3396FD), // button color
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: RDV(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "MakAppoint".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(3, -4))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF4A75FF), // button color
                          child: InkWell(
                            splashColor: Colors.orangeAccent,
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: FillDoc(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.save_as,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "FillDocument".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(-3, -4))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF4A75FF),
                          child: InkWell(
                            splashColor: Colors.lightBlueAccent,
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: ConversationATrois(),
                                curve: Curves.bounceInOut,
                              ));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.groups,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "ConversA3".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(3, -8))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF785EFE),
                          child: InkWell(
                            splashColor: Colors.lightBlueAccent,
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: Abbo(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.payments,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "Sub".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              spreadRadius: 5.0,
                              offset: Offset(-3, -8))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF785EFE), // button color
                          child: InkWell(
                            splashColor: Colors.redAccent, // splash color
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: DrivingLicense(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_car_filled,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "Car".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              spreadRadius: 5.0,
                              offset: Offset(-3, -8))
                        ],
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xFF785EFE), // button color
                          child: InkWell(
                            splashColor: Colors.redAccent, // splash color
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                childCurrent: widget,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: Autres(),
                                curve: Curves.bounceInOut,
                              ));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.lens_blur,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ), // icon
                                Text(
                                  "Other".tr,
                                  style: smallBoldWhiteStyle,
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
