import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Constants/Colors.dart';
import 'package:get/get.dart';


class RDVmairie extends StatefulWidget {
  const RDVmairie({Key? key}) : super(key: key);

  @override
  State<RDVmairie> createState() => _RDVmairieState();
}

class _RDVmairieState extends State<RDVmairie> {
  dynamic date;
  dynamic time;
  static final DateTime now = DateTime. now();

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
    );
    if (newDate == null) return;

    setState (()=> date = newDate);
  }


  getText() {
    if(date == null){
      return 'Date'.tr;
    }
    else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 00);
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (newTime == null) return;

    setState (()=> time = newTime);
  }
  getTime() {
    if(time == null){
      return 'Heure';
    }
    else {
      final hours = time.hour.toString().padLeft(2,'0');
      final minutes = time.minute.toString().padLeft(2,'0');

      return '${hours}:${minutes}';
    }
  }
  TextEditingController dateInput = TextEditingController();
  String? dropdownvalue = 'Arnona';
  var items = [
    'Arnona',
    'Eau',
    'Electricité',
    'Autorisations',
    'Contraventions',
    'Autre'
  ];
  String? dropdownvalue1 = 'Myself'.tr;
  var items1 = [
    'Myself'.tr,
    'MyWife'.tr,
    'MyFather'.tr,
    'MyMother'.tr,
    'MySon'.tr,
    'MyDaughter'.tr
  ];
  String? dropdownvalue2 = 'Netanya';
  var items2 = [
    'Netanya',
    'Tel Aviv',
    'Ashdod',
    'Raanana',
    'Haifa',
    'Hertzlia',
  ];
  String? dropdownvalue3 = 'Medecin traitant';
  var items3 = [
    'Medecin traitant',
    'Gynecologue',
    'Ophtalmo',
    'Radiologue',
    'Gastro',
    'Pediatre'
  ];


  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF3A92E6),
        body: ListView(
          children: [
            //image: AssetImage('assets/pics/background1.png'),
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
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text('RDVmairie'.tr, style: bigBoldWhiteStyle,)
            ),SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,right: 20),
              child: Text("SousTitreRDV".tr, style: smallWhiteStyle,),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                              'TypeOfRDV'.tr,
                              style: smallBoldBlueStyle
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 215,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF3A92E6), width: 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 30, right: 30),
                                  child: DropdownButton(
                                    value: dropdownvalue,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text(items[0]),
                                        value: items[0],
                                      ),
                                      DropdownMenuItem(
                                          child: Text(items[1]),
                                          value: items[1]),
                                      DropdownMenuItem(
                                        child: Text(items[2]),
                                        value: items[2],
                                      ),
                                      DropdownMenuItem(
                                          child: Text(items[3]),
                                          value: items[3]),
                                      DropdownMenuItem(
                                          child: Text(items[4]),
                                          value: items[4]),
                                      DropdownMenuItem(
                                        child: Text(items[5]),
                                        value: items[5],
                                      ),
                                    ],
                                    onChanged: (String? value) {
                                      //get value when changed
                                      print("You have selected $value");
                                      setState(() {
                                        dropdownvalue = value!;
                                      });
                                    },
                                    icon: Padding(
                                      //Icon at tail, arrow bottom is default icon
                                        padding: EdgeInsets.only(left: 20),
                                        child: Icon(Icons.expand_more)),
                                    iconEnabledColor:
                                    Color(0xFF3A92E6), //Icon color
                                    style: smallBoldBlueStyle,
                                    dropdownColor: Colors
                                        .white, //dropdown background color
                                    underline:
                                    Container(), //remove underline
                                    isExpanded:
                                    true, //make true to make width 100%
                                  ))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                              'Who'.tr,
                              style: smallBoldBlueStyle
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 215,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF3A92E6), width: 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 30, right: 30),
                                  child: DropdownButton(
                                    value: dropdownvalue1,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text(items1[0]),
                                        value: items1[0],
                                      ),
                                      DropdownMenuItem(
                                          child: Text(items1[1]),
                                          value: items1[1]),
                                      DropdownMenuItem(
                                        child: Text(items1[2]),
                                        value: items1[2],
                                      ),
                                      DropdownMenuItem(
                                          child: Text(items1[3]),
                                          value: items1[3]),
                                      DropdownMenuItem(
                                          child: Text(items1[4]),
                                          value: items1[4]),
                                      DropdownMenuItem(
                                        child: Text(items1[5]),
                                        value: items1[5],
                                      ),
                                    ],
                                    onChanged: (String? value1) {
                                      //get value when changed
                                      print("You have selected $value1");
                                      setState(() {
                                        dropdownvalue1 = value1!;
                                      });
                                    },
                                    icon: Padding(
                                      //Icon at tail, arrow bottom is default icon
                                        padding: EdgeInsets.only(left: 20),
                                        child: Icon(Icons.expand_more)),
                                    iconEnabledColor:
                                    Color(0xFF3A92E6), //Icon color
                                    style: smallBoldBlueStyle,
                                    dropdownColor: Colors
                                        .white, //dropdown background color
                                    underline:
                                    Container(), //remove underline
                                    isExpanded:
                                    true, //make true to make width 100%
                                  ))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Where'.tr,
                            style: smallBoldBlueStyle,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 215,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Color(0xFF3A92E6), width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: DropdownButton(
                                value: dropdownvalue2,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(items2[0]),
                                    value: items2[0],
                                  ),
                                  DropdownMenuItem(
                                      child: Text(items2[1]),
                                      value: items2[1]),
                                  DropdownMenuItem(
                                    child: Text(items2[2]),
                                    value: items2[2],
                                  ),
                                  DropdownMenuItem(
                                      child: Text(items2[3]),
                                      value: items2[3]),
                                  DropdownMenuItem(
                                      child: Text(items2[4]),
                                      value: items2[4]),
                                  DropdownMenuItem(
                                    child: Text(items2[5]),
                                    value: items2[5],
                                  ),
                                ],
                                onChanged: (String? value2) {
                                  //get value when changed
                                  print("You have selected $value2");
                                  setState(() {
                                    dropdownvalue2 = value2!;
                                  });
                                },
                                icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.expand_more)),
                                iconEnabledColor: Color(0xFF3A92E6), //Icon color
                                style: smallBoldBlueStyle,
                                dropdownColor: Colors
                                    .white, //dropdown background color
                                underline: Container(), //remove underline
                                isExpanded:
                                true, //make true to make width 100%
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'When'.tr,
                            style: smallBoldBlueStyle,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {pickDate(context);},
                          child: Text(getText()),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3A92E6),
                              fixedSize: const Size(210, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Hour'.tr,
                            style: smallBoldBlueStyle,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {pickTime(context);},
                          child: Text(getTime()),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3A92E6),
                              fixedSize: const Size(210, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                      ],
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Color(0xFF3A92E6),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: smallBoldBlueStyle,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: 'Note'.tr,
                          hintStyle: smallBlueStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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
                        color: Color(0xFF3A92E6),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

