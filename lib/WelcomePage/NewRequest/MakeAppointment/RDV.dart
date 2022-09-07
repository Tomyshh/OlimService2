import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/Constants/Colors.dart';
import 'package:untitled/widgets/Button.dart';
import 'package:untitled/widgets/Discover_large_card.dart';
import 'BankAppontment/RDVbank.dart';
import 'M_SecurityAppointment/RDVbitahon.dart';
import 'M_IntegrationAppointment/RDVklita.dart';
import 'MunicipalityAppointment/RDVmairie.dart';
import 'MedicalAppointment/RDVmedical.dart';
import 'PostAppointment/RDVpost.dart';

class RDV extends StatelessWidget {
  const RDV({Key? key}) : super(key: key);

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
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'TypeOfRDV'.tr,
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
              child: Text("SousTitreRDV".tr, style: smallWhiteStyle,),
            ),
            SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:40),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  physics: ScrollPhysics(),
                  children: [
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVmedical()),
                        );
                      },
                      title: "Medical".tr,
                      gradientStartColor: Color(0xFF2FB6EB),
                      gradientEndColor: Color(0xFF2FB6EB),
                      icon: Icons.medical_services,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVmairie()),
                        );
                      },
                      title: "Municipality".tr,
                      gradientStartColor: Color(0xFF1E8BE0),
                      gradientEndColor: Color(0xFF1E8BE0),
                      icon: Icons.dashboard,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVpost()),
                        );
                      },
                      title: "Post".tr,
                      gradientStartColor: Color(0xFF0951B8),
                      gradientEndColor: Color(0xFF0951B8),
                      icon: Icons.local_shipping,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVklita()),
                        );
                      },
                      title: "MisradAklita".tr,
                      gradientStartColor: Color(0xFF01106C),
                      gradientEndColor: Color(0xFF01106C),
                      icon: Icons.directions_run,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVbitahon()),
                        );
                      },
                      title: "BureauDef".tr,
                      gradientStartColor: Color(0xFF000846),
                      gradientEndColor: Color(0xFF000846),
                      icon: Icons.shield,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    DiscoverLargeCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RDVbank()),
                        );
                      },
                      title: "Bank".tr,
                      gradientStartColor: Color(0xFF000130),
                      gradientEndColor: Color(0xFF000130),
                      icon: Icons.paid,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
