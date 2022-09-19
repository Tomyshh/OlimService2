import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Autres extends StatelessWidget {
  const Autres({Key? key}) : super(key: key);

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
                'Other'.tr,
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
          child: ListView(
            physics: ScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:50,left: 20,right: 20),
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Others'.tr,
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
              ),
              SizedBox(height: 20,),
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
                      hintText: 'Expliquez votre demande'.tr,
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
      ]),
    );
  }
}
