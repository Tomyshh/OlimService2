import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView1.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView2.dart';
import 'package:untitled/LogIn_Signup/SubscriptionPageView3.dart';
import 'package:untitled/WelcomePage/MainPage.dart';
import 'package:untitled/LogIn_Signup/Subscription.dart';
import '../widgets/Loading.dart';
import 'package:get/get.dart';
import 'package:country_icons/country_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shimmer_animation/shimmer_animation.dart';


class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  PageController _controller = PageController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(children: [
          PageView(
            controller: _controller,
            children: [
              SubscriptionPageView1(),
              SubscriptionPageView2(),
              SubscriptionPageView3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                    activeDotColor: Colors.deepPurpleAccent,
                    dotHeight: 15,
                    dotColor: Colors.white,
                    dotWidth: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(onPressed: (){
                    _controller.nextPage(
                        duration: const Duration(seconds: 1), curve: Curves.easeIn);
                  },
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.deepPurpleAccent,
                ),
              )),
        ]),
      ),
    );
  }
}
