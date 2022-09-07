import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/BottomNavigationBar/PageBeforeHomePage.dart';
import 'package:untitled/BottomNavigationBar/bottombartest.dart';
import 'package:untitled/Constants/Colors.dart';
import 'package:untitled/LogIn_Signup/Subscription.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:untitled/WelcomePage/MainPage.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double width = 200;
  FirebaseAuthPlatform authPlatform = FirebaseAuthPlatform.instanceFor(
    app: Firebase.apps.first,
    pluginConstants: {},
  );
  bool isPasswordVisible = false;
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';
  bool error = false;
  bool isLoading = false;

  final List locale = [
    {'name': 'Français', 'locale': Locale('fr', 'FR')},
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'עברית', 'locale': Locale('he', 'IL')},
  ];

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            backgroundColor: Color(0xFF3D9BE9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            title: InkWell(
              child: Container(
                  child: Text(
                'Language',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
            content: Container(
              width: 50,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print(locale[index]['name']);
                          updatelanguage(locale[index]['locale']);
                        },
                        child: Text(locale[index]['name'],
                            style: TextStyle(color: Colors.white)),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Color(0xFF1D2860),
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.lightBlueAccent.withOpacity(0.2),
              Colors.blueAccent.shade100,
            ]
          )),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Image.asset('assets/LoginLogo.png',height: 150,
                  width: 150,)),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height: 75,
                    width: 280,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blueAccent,
                        ]
                      ),
                        color: Color(0xFF008FD7),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 4,
                              offset: Offset(2, 2),
                              color: Colors.black26)
                        ],
                        borderRadius: BorderRadius.circular(400).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Olim',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5)
                              ]),
                        ),
                        Text(
                          ' Connexion'.tr,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C4ED2),
                              shadows: [
                                Shadow(
                                    color: Colors.black38,
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 2)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp('[ ]')),
                      ],

                      onChanged: (value) {
                      email = value;
                    },
                    style: normalBlueFonceStyle,
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),

                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xFF1D2860),
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'Mail'.tr,
                        hintStyle: normalBlueFonceStyle,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: error
                                ? BorderSide(color: Colors.red.shade200)
                                : BorderSide(color: Color(0x341D2860),)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: error
                                ? BorderSide(color: Colors.red)
                                : BorderSide(color: Color(0xFF1D2860),))),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    style: normalBlueFonceStyle,
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFF1D2860),
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
                            color: Color(0xFF1D2860),
                            size: 22,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Password'.tr,
                        hintStyle: normalBlueFonceStyle,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: error
                                ? BorderSide(color: Colors.red.shade200)
                                : BorderSide(color: Color(0x341D2860),)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            borderSide: error
                                ? BorderSide(color: Colors.red)
                                : BorderSide(color: Color(0xFF1D2860),))),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                error
                    ? Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ErrorAuth'.tr,
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Comfortaa',
                            fontStyle: FontStyle.normal,
                            fontSize: 13,
                          ),
                        ))
                    : SizedBox(height: 1),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        'FPassword'.tr,
                        style: normalBlueFonceStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30).copyWith(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.lightBlueAccent,
                            Colors.blueAccent,
                          ]
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color:
                              Colors.black38, //Colors.black12.withOpacity(0.2)
                        ),
                      ]),
                  height: 50,

                  width: isLoading ? width = 50 : width = 200,

                  child: TextButton(
                      child: isLoading
                          ? CircularProgressIndicator(
                              strokeWidth: 1.5,
                              color: Colors.white,
                            )
                          : Text(
                              'Connexion'.tr,
                              style: normalWhiteStyle,
                            ),
                      onPressed: () async {
                        setState(() => isLoading = true);
                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if (user != null) {
                            Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              childCurrent: widget,
                              duration: Duration(milliseconds: 600),
                              reverseDuration: Duration(milliseconds: 600),
                              child : DiscoverPage(),
                              curve: Curves.bounceInOut,
                            ));
                            error = false;
                          }
                          setState(() => isLoading = false);
                        } catch (e) {
                          print(e);
                          setState(() => isLoading = false);
                          error = true;
                        }
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            Color(0xFF2C4ED2)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'NotAbbo'.tr,
                  style: normalBlueFonceStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inscription()),
                    );
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF1D2860),),
                      borderRadius: BorderRadius.circular(30).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0)),
                    ),
                    child: Text(
                      'Inscription'.tr,
                      style: normalBlueFonceStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60).copyWith(
                          bottomRight: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.lightBlueAccent,
                            Colors.blueAccent,
                          ]
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color:
                              Colors.black12, //Colors.black12.withOpacity(0.2)
                        ),
                      ]),
                  height: 40,
                  width: 200,
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Color(0xFF2C4ED2)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30).copyWith(
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Languages'.tr,
                      style: normalWhiteStyle,
                    ),
                    onPressed: () {
                      buildialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
