import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Constants/Colors.dart';

class MyRDV extends StatefulWidget {
  const MyRDV({Key? key}) : super(key: key);

  @override
  State<MyRDV> createState() => _MyRDVState();
}

class _MyRDVState extends State<MyRDV> {
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
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'RDV'.tr,
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
            children: [
            MyAppointContainer(
              city: 'Netanya',
              height: 100,
              prefixIcon: Icons.medical_services,
              stateIcon: Icons.hourglass_bottom,
              typeText: 'Ophtalmo',
              date: '12/08/2022',
              hour: '17:05',
              stateColor: Colors.orange,
              qui: 'Moi-même',
              adress: 'David Remez 13, Netanya',
            ),
            SizedBox(
              height: 15,
            ),
          ],),
        ),
      )
        ],
      ),
    );
  }
}

class MyAppointContainer extends StatefulWidget {
  late double height;
  final dynamic prefixIcon;
  final String typeText;
  final dynamic stateIcon;
  final String date;
  final String hour;
  final String city;
  final Color stateColor;
  final String qui;
  final String adress;
  MyAppointContainer(
      {Key? key,
      required this.height,
      required this.prefixIcon,
      required this.stateIcon,
      required this.typeText,
      required this.date,
      required this.hour,
      required this.city,
      required this.stateColor,
      required this.qui,
      required this.adress});

  @override
  State<MyAppointContainer> createState() => _MyAppointContainerState();
}

class _MyAppointContainerState extends State<MyAppointContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.height == 400 ? widget.height = 100 : widget.height = 400;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                        widget.typeText,
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
                          widget.date,
                          style: smallBoldBlueStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.hour,
                          style: smallBoldBlueStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.city,
                          style: smallBoldBlueStyle,
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 5),
                      child: Icon(
                        widget.stateIcon,
                        color: Colors.orangeAccent.shade400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              widget.height == 400
                  ? Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DelayedDisplay(
                          delay: Duration(seconds: 1),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Pour :',
                                      style: normalBlueBoldFonceStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      widget.qui,
                                      style: normalBlueFonceStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Adresse :'.tr,
                                      style: normalBlueBoldFonceStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(widget.adress, style: normalBlueFonceStyle,),
                                  ],
                                ),
                                SizedBox(height: 100,),
                                Text("Le rendez-vous n'a pas encore été effectué par nos services", style: smallOrangeStyle,)
                              ],
                            ),
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
    );
  }
}
