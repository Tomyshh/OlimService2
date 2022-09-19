import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView1.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView2.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView3.dart';
import 'package:untitled/WelcomePage/MainPage.dart';
import 'package:untitled/LogIn_Signup/Subscription.dart';
import '../Constants/Colors.dart';
import '../widgets/Loading.dart';
import 'package:get/get.dart';
import 'package:country_icons/country_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  PageController _controller = PageController();
  int pageChanger=0;


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Color(0xFF3D9BE9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              title: Center(child: Text('ExitSub'.tr, style: normalBlueBoldFonceStyle)),
              content: Text('AreYouSureToLeaveSub'.tr, style: normalWhiteStyle),
              actions: [
                TextButton(
                  child: Text('Cancel'.tr, style: normalBlueBoldFonceStyle),
                  onPressed: () => Navigator.pop(context, false),
                ),
                TextButton(
                  child: Text('Confirm'.tr, style: normalBlueBoldFonceStyle),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }
                ),
              ],
            );
          },
        );
        // if the dialog is dismissed by tapping outside of the barrier
        // the result is null, so we return false
        return shouldPop ?? false;
      },

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          PageView(
            onPageChanged: (index){
              setState(() {
                pageChanger=index;
              });
            },
            controller: _controller,
            children: [
              SubscriptionPageView1(),
              SubscriptionPageView2(),
              SubscriptionPageView3(),
            ],
          ),
          /*Container(
            alignment: Alignment.bottomCenter,
            child: LinearProgressIndicator(
              minHeight: 10,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1D2860),),
            ),
          ),*/
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Previous'.tr, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Comfortaa',
                  color: Color(0xFF1D2860),
                ),),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ScaleEffect(
                    activeDotColor: Colors.blue.shade900,
                    dotHeight: 15,
                    dotColor: Colors.white,
                    dotWidth: 15,
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Next'.tr,
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                          color: Color(0xFF1D2860),
                        ),
                        colors: [
                          Colors.white,
                          Color(0xFF1D2860),

                        ],
                      ),
                    ],
                    isRepeatingAnimation: false,
                    repeatForever: false,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(height: 100, width: 150,child: GestureDetector(onTap: (){
                _controller.previousPage(
                    duration: const Duration(milliseconds: 1500), curve: Curves.elasticOut);
              },),),
              Container(height: 100, width: 150,child: GestureDetector(onTap: (){
              _controller.nextPage(
                    duration: const Duration(milliseconds: 1500), curve: Curves.elasticOut);
              },),)
            ],),
          ),



          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10,30,0,0),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue.shade900,
            ),
          ),
          Container(child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
          ),
          width: 70,height: 70,)
        ]),
      ),
    );
  }
}
