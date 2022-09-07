import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';
import 'package:get/get.dart';

class Abbo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF3D9BE9),
        title: Text('Abo'.tr),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontFamily: "Comfortaa",
          fontSize: 18,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.8,
              ],
              colors: [
                //Color(0xFF03045e),
                Color(0xFF3D9BE9),
                Colors.white,
              ],
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('QuestionAbo'.tr,
                  style: TextStyle(
                    color: Color(0xFF1D2860),
                    fontFamily: 'Comfortaa',
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Color(0xFF1D2860),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: new InputDecoration(
                    hintText: 'YourText'.tr,
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FloatingActionButton(
              splashColor: Color(0xFFaedbf9),
              child: Container(
                width: 60,
                height: 60,
                child: Icon(
                  Icons.send,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF3D9BE9),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
