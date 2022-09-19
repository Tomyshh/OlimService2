import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Constants/Colors.dart';

class Appartment extends StatefulWidget {
  const Appartment({Key? key}) : super(key: key);

  @override
  State<Appartment> createState() => _AppartmentState();
}

class _AppartmentState extends State<Appartment> {
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
              children: [
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
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Appartment'.tr,
              style: bigBoldWhiteStyle,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'SousTitreAppartment'.tr,
              style: smallWhiteStyle,
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
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        child: Text(
                          'Entry',
                          style: normalBlueFonceStyle,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 500,
                                child: Center(
                                  child: ElevatedButton(
                                    child: Text('Close'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
