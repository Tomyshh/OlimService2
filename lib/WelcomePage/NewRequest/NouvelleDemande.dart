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
import 'package:untitled/WelcomePage/NewRequest/Appartement/Appartment.dart';
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyRequestContainer(icon: Icons.payment_rounded, title: "PayOnline".tr, page: PayOnline(), color: Color(0xFF119AEA),),
                        MyRequestContainer(icon: Icons.translate_rounded, title: 'Translation'.tr, page: Translate(), color: Color(0xFF119AEA),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyRequestContainer(icon: Icons.drive_file_rename_outline, title: "WriteMessage".tr, page: RedigerMessage(), color: Color(0xFF147BF2),),
                        MyRequestContainer(icon: Icons.calendar_month, title: 'MakeAppoint'.tr, page: RDV(), color: Color(0xFF147BF2),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyRequestContainer(icon: Icons.save_as, title: "FillDocument".tr, page: FillDoc(), color: Color(0xFF1959F7),),
                        MyRequestContainer(icon: Icons.groups, title: 'ConversA3'.tr, page: ConversationATrois(), color: Color(0xFF1959F7),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyRequestContainer(icon: Icons.payments, title: "Sub".tr, page: Abbo(), color: Color(0xFF1D34FE),),
                        MyRequestContainer(icon: Icons.directions_car_filled, title: 'Car'.tr, page: DrivingLicense(), color: Color(0xFF1D34FE),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyRequestContainer(icon: Icons.maps_home_work, title: "Appartment".tr, page: Appartment(), color: Color(0xFF1C3EFF),),
                        MyRequestContainer(icon: Icons.lens_blur, title: 'Other'.tr, page: Autres(), color: Color(0xFF1C3EFF),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MyRequestContainer extends StatelessWidget {
  final dynamic icon;
  final String title;
  final dynamic page;
  final dynamic widget;
  final Color color;
  MyRequestContainer({Key? key,
  required this.icon,
  required this.title,
  required this.page,
  required this.color,
  this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.rightToLeft,
            childCurrent: widget,
            duration: Duration(milliseconds: 300),
            reverseDuration: Duration(milliseconds: 300),
            child: page,
            curve: Curves.bounceInOut,
          ),
        );
      },
      child: Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 3.0,
                offset: Offset(3, 3))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              height: 20,
            ), // icon
            Text(
              title,
              style: smallBoldWhiteStyle,
            ), // text
          ],
        ),
      ),
    );
  }
}
