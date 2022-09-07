import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/BottomNavigationBar/Help.dart';
import 'package:untitled/BottomNavigationBar/Notifications.dart';
import 'package:untitled/BottomNavigationBar/Settings.dart';
import 'package:untitled/WelcomePage/MyAppointment/MyRDV.dart';
import 'package:untitled/WelcomePage/MyFiles/MyFiles.dart';
import 'package:untitled/WelcomePage/MyRequest/MyRequest.dart';
import 'package:untitled/WelcomePage/AllPartenairs.dart';

import 'package:untitled/WelcomePage/NewRequest/NouvelleDemande.dart';
import 'package:untitled/widgets/discover_card.dart';
import 'package:untitled/widgets/discover_small_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Bienvenue'.tr+' John',
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                          color: Colors.blueAccent,
                        ),
                        colors: [
                          Colors.deepPurpleAccent,
                          Colors.blueAccent,
                        ],
                      ),
                    ],
                    isRepeatingAnimation: false,
                    repeatForever: false,
                  ),
                  SizedBox(width: 40,),
                  Container(child: Image.asset('assets/vip.jpg', scale: 30,))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Text(
                "Services".tr,
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19.w,
                    mainAxisExtent: 125.w,
                    mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        childCurrent: widget,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: NouvelleDemande(),
                        curve: Curves.bounceInOut,
                      ));
                    },
                    title: "NewRequest".tr,
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                    icon: Icons.add,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        childCurrent: widget,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: MyRequest(),
                        curve: Curves.bounceInOut,
                      ));
                    },
                    title: "MyRequest".tr,
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                    icon: Icons.content_paste,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        childCurrent: widget,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: MyFiles(),
                        curve: Curves.bounceInOut,
                      ));
                    },
                    title: "MyDocs".tr,
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                    icon: Icons.badge,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        childCurrent: widget,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: MyRDV(),
                        curve: Curves.bounceInOut,
                      ));
                    },
                    title: "RDV".tr,
                    icon: Icons.calendar_month,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Partner".tr,
                    style: TextStyle(
                        color: Color(0xff515979),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        childCurrent: widget,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: AllPartenairs(),
                        curve: Curves.bounceInOut,
                      ));},
                      child: Text("SeeAll".tr,
                          style: TextStyle(
                              color: Color(0xff4A80F0),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.w)))
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 176.w,
              child: Scrollbar(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10.w),
                    DiscoverCard(
                      tag: "travaux",
                      onTap: onSleepMeditationTapped,
                      title: "Construction".tr,
                      subtitle: "ConstructionSentence".tr,
                      icon: Icons.construction,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "RealEstate".tr,
                      subtitle: "RealEstateSentence".tr,
                      gradientStartColor: Color(0xffFC67A7),
                      gradientEndColor: Color(0xffF6815B),
                      icon: Icons.real_estate_agent,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Plumber".tr,
                      subtitle: "PlumberSentence".tr,
                      gradientStartColor: Color(0xff834294),
                      gradientEndColor: Color(0xffDB93EA),
                      icon: Icons.plumbing,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Info".tr,
                      subtitle: "InfoSentence".tr,
                      gradientStartColor: Color(0xff000D4B),
                      gradientEndColor: Color(0xff4EBFED),
                      icon: Icons.keyboard,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Assurance".tr,
                      subtitle: "AssuranceSentence".tr,
                      gradientStartColor: Color(0xff014634),
                      gradientEndColor: Color(0xff29BD5C),
                      icon: Icons.security,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Juridique".tr,
                      subtitle: "JuridiqueSentence".tr,
                      gradientStartColor: Color(0xffC68A02),
                      gradientEndColor: Color(0xffFCD60F),
                      icon: Icons.balance,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Bank".tr,
                      subtitle: "BankSentence".tr,
                      gradientStartColor: Color(0xff545F6D),
                      gradientEndColor: Color(0xffB2B6BC),
                      icon: Icons.account_balance,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Tel".tr,
                      subtitle: "TelSentence".tr,
                      gradientStartColor: Color(0xff17A5AE),
                      gradientEndColor: Color(0xffADEDCF),
                      icon: Icons.rss_feed,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Electric".tr,
                      subtitle: "ElectricSentence".tr,
                      gradientStartColor: Color(0xff000F67),
                      gradientEndColor: Color(0xff0196FA),
                      icon: Icons.rss_feed,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Climatisation".tr,
                      subtitle: "ClimatisationSentence".tr,
                      gradientStartColor: Color(0xffFF639B),
                      gradientEndColor: Color(0xffFE9AB7),
                      icon: Icons.ac_unit,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Vitre".tr,
                      subtitle: "VitreSentence".tr,
                      gradientStartColor: Color(0xffFFCDA5),
                      gradientEndColor: Color(0xffFF945D),
                      icon: Icons.water_drop,
                    ),
                    SizedBox(width: 20.w),
                    DiscoverCard(
                      onTap: onDepressionHealingTapped,
                      title: "Electromenager".tr,
                      subtitle: "ElectromenagerSentence".tr,
                      gradientStartColor: Color(0xffF01932),
                      gradientEndColor: Color(0xffFFD1C9),
                      icon: Icons.electrical_services,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28.h),
          ],
        ),
      ),
    );
  }

  void onSeeAllTapped() {}

  void onSleepMeditationTapped() {}

  void onDepressionHealingTapped() {}

  void onSearchIconTapped() {}
}
