import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/NewRequest/MakeAbonnement/Abbo.dart';
import 'package:untitled/NewRequest/Other/Autres.dart';
import 'package:untitled/NewRequest/FillDocument/FillDoc.dart';
import 'package:untitled/NewRequest/MyRequest/MyRequest.dart';
import 'package:untitled/WelcomePage/PayOnline/PayOnline.dart';
import 'package:untitled/WelcomePage/MakeAppointment/RDV.dart';
import 'package:untitled/NewRequest/WriteMessage/RedigerMessage.dart';
import 'package:untitled/WelcomePage/Translate/Translate.dart';
import 'package:untitled/widgets/discover_small_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NouvelleDemande extends StatefulWidget {
  const NouvelleDemande({Key? key}) : super(key: key);

  @override
  State<NouvelleDemande> createState() => _NouvelleDemandeState();
}

class _NouvelleDemandeState extends State<NouvelleDemande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Demandes".tr,
                      style: TextStyle(
                          color: Color(0xff515979),
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PayOnline()),
                      );
                    },
                    title: "PayOnline".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.payment,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Translate()),
                      );
                    },
                    title: "Translation".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.translate,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedigerMessage()),
                      );
                    },
                    title: "WriteMessage".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.edit,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RDV()),
                      );
                    },
                    title: "MakAppoint".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.calendar_month,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FillDoc()),
                      );
                    },
                    title: "FillDocument".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.description,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyRequest()),
                      );
                    },
                    title: "ConversA3".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.groups,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Abbo()),
                      );
                    },
                    title: "Sub".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.list,
                  ),
                  DiscoverSmallCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Autres()),
                      );
                    },
                    title: "Other".tr,
                    gradientStartColor: Colors.blueAccent.shade100,
                    gradientEndColor: Colors.blueAccent.shade200,
                    icon: Icons.help,
                  ),
                ],
              ),
            ),
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
