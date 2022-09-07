import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../Constants/Colors.dart';


class MyInfos extends StatefulWidget {
  const MyInfos({Key? key}) : super(key: key);

  @override
  State<MyInfos> createState() => _MyInfosState();
}

class _MyInfosState extends State<MyInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child : ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Stack(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ],

            )
          ],
        )
      ),
    );
  }
}
