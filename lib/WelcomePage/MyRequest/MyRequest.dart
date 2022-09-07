import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../Constants/Colors.dart';
import 'package:delayed_display/delayed_display.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({Key? key}) : super(key: key);

  @override
  State<MyRequest> createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A92E6),
      body: ListView(
        children: [
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
                IconButton(
                  icon: Icon(Icons.sync,),
                  color: Colors.white,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
      SizedBox(
        height: 25.0,
      ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text('MyRequest'.tr,style: bigBoldWhiteStyle,)
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'Consultez vos demandes en temps !'
                    .tr,
                style: smallWhiteStyle,
              )),
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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      height == 300 ? height = 100 : height = 300;
                    });
                  },
                  child: MyAnimatedContainer(
                    height: 100,
                    stateColor: Colors.orangeAccent,
                    prefixIcon: Icons.translate,
                    typeText: 'Translation'.tr,
                    date: '30/07/2022',
                    hour: '09:16',
                    stateIcon: Icons.hourglass_bottom,
                    yourText:
                    'שלום גיון, באים להודיעך כי התשליום של מיי נתניה לא עבר נא צור קשר במידי או הסדר את התשלום דרך האתר של מיי נתניה',
                    ourTrad: "La traduction n'a pas encore été effectué par nos services",
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      height == 300 ? height = 100 : height = 300;
                    });
                  },
                  child: MyWriteMessageAnimatedContainer(
                    height: 100,
                    stateColor: Colors.green,
                    prefixIcon: Icons.border_color,
                    typeText: 'Rédiger un message'.tr,
                    date: '29/07/2022',
                    hour: '12:56',
                    stateIcon: Icons.check_circle,
                    yourText:
                    'Chère Vaad, nous aimerions régler le problème des poubelles au plus vite. Pourrions nous nous rencontrer dans la semaine ? Merci. John',
                    ourTrad:
                    'שלום ועד היקר, אנו רוצים לסדר את עניין של הפחים כמה שיותר מהר. אפשר להיפגש השבוע ? תודה, גיון.',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MyRDVAnimatedContainer(
                  height: 100,
                  stateColor: Colors.green,
                  prefixIcon: Icons.calendar_month,
                  typeText: 'Rendez-vous'.tr,
                  date: '01/08/2022',
                  hour: '17:39',
                  stateIcon: Icons.check_circle,
                  yourText: 'Voir dans la rubrique mes rendez-vous',
                ),
              ),
            ],
          ),
        ),
      )
        ],
      ),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  late double height;
  final dynamic prefixIcon;
  final String typeText;
  final dynamic stateIcon;
  final String date;
  final String hour;
  final Color stateColor;
  final String yourText;
  final String ourTrad;
  MyAnimatedContainer({
    Key? key,
    required this.height,
    required this.prefixIcon,
    required this.stateIcon,
    required this.typeText,
    required this.date,
    required this.hour,
    required this.stateColor,
    required this.yourText,
    required this.ourTrad,
  });
  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.height == 400 ? widget.height = 100 : widget.height = 400;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(
                      widget.prefixIcon,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      widget.typeText.tr,
                      style: smallBoldBlueStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Envoyée le :',
                        style: smallBoldBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.date,
                        style: smallBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'à',
                            style: smallBoldBlueStyle,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            widget.hour,
                            style: smallBlueStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Icon(widget.stateIcon, color: widget.stateColor),
                  )
                ],
              ),
              widget.height == 400
                  ? Expanded(
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Votre texte : ',
                                style: smallBoldBlueStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.yourText,
                                style: smallBlueStyle,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Traduction :',
                                style: smallBoldBlueStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.ourTrad,
                                style: smallOrangeStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 1,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class MyWriteMessageAnimatedContainer extends StatefulWidget {
  late double height;
  final dynamic prefixIcon;
  final String typeText;
  final dynamic stateIcon;
  final String date;
  final String hour;
  final Color stateColor;
  final String yourText;
  final String ourTrad;
  MyWriteMessageAnimatedContainer({
    Key? key,
    required this.height,
    required this.prefixIcon,
    required this.stateIcon,
    required this.typeText,
    required this.date,
    required this.hour,
    required this.stateColor,
    required this.yourText,
    required this.ourTrad,
  });

  @override
  State<MyWriteMessageAnimatedContainer> createState() =>
      _MyWriteMessageAnimatedContainerState();
}

class _MyWriteMessageAnimatedContainerState
    extends State<MyWriteMessageAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.height == 400 ? widget.height = 100 : widget.height = 400;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(
                      widget.prefixIcon,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      widget.typeText.tr,
                      style: smallBoldBlueStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Envoyée le :',
                        style: smallBoldBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.date,
                        style: smallBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'à',
                            style: smallBoldBlueStyle,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            widget.hour,
                            style: smallBlueStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Icon(widget.stateIcon, color: widget.stateColor),
                  )
                ],
              ),
              widget.height == 400
                  ? Expanded(
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Votre texte : ',
                                style: smallBoldBlueStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.yourText,
                                style: normalBlueFonceStyle,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Traduction :',
                                style: smallBoldBlueStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.ourTrad,
                                style: smallGreenStyle,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 1,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class MyRDVAnimatedContainer extends StatefulWidget {
  late double height;
  final dynamic prefixIcon;
  final String typeText;
  final dynamic stateIcon;
  final String date;
  final String hour;
  final Color stateColor;
  final String yourText;
  MyRDVAnimatedContainer({
    Key? key,
    required this.height,
    required this.prefixIcon,
    required this.stateIcon,
    required this.typeText,
    required this.date,
    required this.hour,
    required this.stateColor,
    required this.yourText,
  });

  @override
  State<MyRDVAnimatedContainer> createState() => _MyRDVAnimatedContainerState();
}

class _MyRDVAnimatedContainerState extends State<MyRDVAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.height == 200 ? widget.height = 100 : widget.height = 200;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(
                      widget.prefixIcon,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      widget.typeText.tr,
                      style: smallBoldBlueStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Envoyée le :',
                        style: smallBoldBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.date,
                        style: smallBlueStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'à',
                            style: smallBoldBlueStyle,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            widget.hour,
                            style: smallBlueStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 60,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Icon(widget.stateIcon, color: widget.stateColor),
                  )
                ],
              ),
            ),
            widget.height == 200
                ? Expanded(
                    child: DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.yourText,
                              style: smallGreenStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 1,
                  ),
          ],
        ),
      ),
    );
  }
}
