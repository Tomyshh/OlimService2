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
                  icon: Icon(
                    Icons.sync,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'MyRequest'.tr,
                style: bigBoldWhiteStyle,
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'Consultez vos demandes en temps !'.tr,
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
              padding: const EdgeInsets.only(top: 50),
              child: ListView(
                physics: ScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          'En cours',
                          style: normalBlueFonceStyle,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    ),
                  ),
                  MyAnimatedContainer(
                    height: 100,
                    stateColor: Colors.orangeAccent,
                    containerColor: Colors.blue.shade100,
                    prefixIcon: Icons.translate,
                    typeText: 'Translation'.tr,
                    date: '30/09/2022',
                    hour: '09:16',
                    stateIcon: Icons.hourglass_bottom,
                    yourText:
                        'שלום גיון, באים להודיעך כי התשליום של מיי נתניה לא עבר נא צור קשר במידי או הסדר את התשלום דרך האתר של מיי נתניה',
                    ourTrad:
                        "Traduction à venir",
                    textResponseColor: Colors.deepOrange,
                  ),
                  MyWriteMessageAnimatedContainer(
                    height: 100,
                    stateColor: Colors.green,
                    containerColor: Colors.blue.shade100,
                    prefixIcon: Icons.border_color,
                    typeText: 'Rédiger un message'.tr,
                    date: '29/09/2022',
                    hour: '12:56',
                    stateIcon: Icons.check_circle,
                    yourText:
                        'Chère Vaad, nous aimerions régler le problème des poubelles au plus vite. Pourrions nous nous rencontrer dans la semaine ? Merci. John',
                    ourTrad:
                        'שלום ועד היקר, אנו רוצים לסדר את עניין של הפחים כמה שיותר מהר. אפשר להיפגש השבוע ? תודה, גיון',
                  ),
                  MyRDVAnimatedContainer(
                    height: 100,
                    stateColor: Colors.green,
                    containerColor: Colors.blue.shade100,
                    prefixIcon: Icons.calendar_month,
                    typeText: 'Rendez-vous'.tr,
                    date: '01/09/2022',
                    hour: '17:39',
                    stateIcon: Icons.check_circle,
                    yourText: 'Voir dans la rubrique mes rendez-vous',

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          'Terminé'.tr,
                          style: normalBlueFonceStyle,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    ),
                  ),
                  MyAnimatedContainer(
                    height: 100,
                    stateColor: Colors.green,
                    containerColor: Colors.grey.shade300,
                    prefixIcon: Icons.translate,
                    typeText: 'Translation'.tr,
                    date: '29/10/2021',
                    hour: '15:21',
                    stateIcon: Icons.check_circle,
                    yourText:
                    'שלום רב, קיבלת הודעה מהביטוח לאוצי. תתחבר/י אל האזור האישי שלך כדי לצפות בה. ביטוח לאומי לשירותך',
                    ourTrad:
                    "Bonjour, vous avez reçu un message de la part du Bitouah Leumi. Connectez-vous à votre espace personel en ligne afin d'y acceder.",
                    textResponseColor: Colors.blue.shade900,
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
  final Color containerColor;
  final Color textResponseColor;
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
    required this.containerColor,
    required this.textResponseColor,
  });
  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.height == 400
                      ? widget.height = 100
                      : widget.height = 400;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: widget.height,
                decoration: BoxDecoration(
                    color: widget.containerColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(widget.prefixIcon,
                            color : Colors.blue.shade900,size: 30,),
                        title: Text(widget.typeText.tr,
                            style: normalBlueBoldFonceStyle, ),
                        subtitle: Text('Envoyé le '+widget.date+' à '+widget.hour, style: smallBlueStyle,),
                        trailing: Icon(widget.stateIcon, color: widget.stateColor,),
                      ),
                      widget.height == 400
                          ? Expanded(
                              child: DelayedDisplay(
                                delay: Duration(milliseconds: 300),
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
                                        style: TextStyle(
                                          color : widget.textResponseColor,
                                          fontFamily: 'Comfortaa',
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15,),
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
            ),
          ),
        ],
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
  final Color containerColor;
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
    required this.containerColor,
  });

  @override
  State<MyWriteMessageAnimatedContainer> createState() =>
      _MyWriteMessageAnimatedContainerState();
}

class _MyWriteMessageAnimatedContainerState
    extends State<MyWriteMessageAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.height == 400
                      ? widget.height = 100
                      : widget.height = 400;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                height: widget.height,
                decoration: BoxDecoration(
                    color: widget.containerColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(widget.prefixIcon,
                          color : Colors.blue.shade900,size: 30,),
                        title: Text(widget.typeText.tr,
                          style: normalBlueBoldFonceStyle, ),
                        subtitle: Text('Envoyé le '+widget.date+' à '+widget.hour, style: smallBlueStyle,),
                        trailing: Icon(widget.stateIcon, color: widget.stateColor,),
                      ),
                      widget.height == 400
                          ? Expanded(
                              child: DelayedDisplay(
                                delay: Duration(milliseconds: 300),
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
                                        style: normalBlueFonceStyle,
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
            ),
          ),
        ],
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
  final containerColor;
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
    required this.containerColor,
  });

  @override
  State<MyRDVAnimatedContainer> createState() => _MyRDVAnimatedContainerState();
}

class _MyRDVAnimatedContainerState extends State<MyRDVAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.height == 200
                      ? widget.height = 100
                      : widget.height = 200;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                height: widget.height,
                decoration: BoxDecoration(
                    color: widget.containerColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Column(
                    children: [

                      ListTile(
                        leading: Icon(widget.prefixIcon,
                          color : Colors.blue.shade900,size: 30, ),
                        title: Text(widget.typeText.tr,
                          style: normalBlueBoldFonceStyle, ),
                        subtitle: Text('Envoyé le '+widget.date+' à '+widget.hour, style: smallBlueStyle,),
                        trailing: Icon(widget.stateIcon, color: widget.stateColor,),
                      ),
                      widget.height == 200
                          ? Expanded(
                              child: DelayedDisplay(
                                delay: Duration(milliseconds: 200),
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
                                        style: italicBlueFonceStyle,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
