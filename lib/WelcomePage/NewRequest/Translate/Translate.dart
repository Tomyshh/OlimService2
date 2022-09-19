import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';
import 'package:get/get.dart';

class Translate extends StatefulWidget {
  @override
  State<Translate> createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  File? _photo;
  final ImagePicker _picker = ImagePicker();

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadFile();
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadFile();
      } else {
        print('TradDoc'.tr);
      }
    });
  }

  Future uploadFile() async {
    if (_photo == null) return;
    final fileName = basename(_photo!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(_photo!);
    } catch (e) {
      print('error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A92E6),
      body: ListView(children: [
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
          height: 25.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'TradDoc'.tr,
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
        SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:50),
            child: ListView(
              physics: ScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'PhotoPropre'.tr,
                        textStyle: TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                          color: Colors.blueAccent,
                        ),
                        colors: [
                          Colors.blueAccent,
                          Colors.deepPurpleAccent,
                          Colors.blueAccent,
                        ],
                      ),
                    ],
                    isRepeatingAnimation: false,
                    repeatForever: false,
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      _showPicker(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _photo != null
                          ? Container(
                        child: Image.file(
                          _photo!,
                          width: 300,
                          height: 300,
                          fit: BoxFit.fitHeight,
                        ),
                      )
                          : Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.deepPurpleAccent,
                              Colors.blueAccent,
                            ]),
                            borderRadius: BorderRadius.circular(50)),
                        width: 100,
                        height: 50,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Comfortaa',
                        fontStyle: FontStyle.normal,
                        fontSize: 14.5,
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'YourText'.tr,
                        hintStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blueAccent,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                  splashColor: Colors.blue,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.send,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Colors.deepPurpleAccent,
                        Colors.blueAccent,
                      ]),
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'.tr),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'.tr),
                    onTap: () {
                      imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
