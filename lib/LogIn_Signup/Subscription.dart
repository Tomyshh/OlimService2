import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/LogIn.dart';
import 'package:untitled/MainPage.dart';
import 'package:untitled/Subscription.dart';
import 'Loading.dart';
import 'package:get/get.dart';
import 'package:country_icons/country_icons.dart';
import 'StripePayment.dart';
import 'Maj.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'SubscriptionPageView1.dart';
import 'SubscriptionPageView2.dart';
import 'SubscriptionPageView3.dart';

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
                            color: Colors.deepPurpleAccent,
                          ),
                          colors: [
                            Colors.deepPurpleAccent,
                            Colors.white,
                            Colors.blueAccent,
                          ],
                        ),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
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
