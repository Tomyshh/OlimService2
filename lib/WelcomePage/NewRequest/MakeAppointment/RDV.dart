import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/widgets/Button.dart';
import 'BankAppontment/RDVbank.dart';
import 'M_SecurityAppointment/RDVbitahon.dart';
import 'M_IntegrationAppointment/RDVklita.dart';
import 'MunicipalityAppointment/RDVmairie.dart';
import 'MedicalAppointment/RDVmedical.dart';
import 'PostAppointment/RDVpost.dart';

class RDV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      'QueltypedeRDV'.tr,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  button(
                    backgroundcolorFonce: Colors.blueAccent,
                    backgroundcolorClaire: Color(0xFFb0f2b6),
                    iconcolor: Color(0xFFb0f2b6),
                    text: 'Med'.tr,
                    textcolor: Colors.green,
                    sizetext: 20,
                    highlightcolor: Colors.green,
                    splashcolor: Colors.greenAccent.withOpacity(0.7),
                    icon: Icons.medical_services,
                    navigator: Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RDVmedical()),
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
/*button(
backgroundcolor: Color(0xFFb0f2b6),
iconcolor: Color(0xFFb0f2b6),
text: 'Med'.tr,
textcolor: Colors.green,
sizetext: 20,
highlightcolor: Colors.green,
splashcolor: Colors.greenAccent.withOpacity(0.7),
icon: Icons.medical_services,
navigator: Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => RDVmedical()),
),
),
button(
backgroundcolor: Color(0xFF9A9AEB),
iconcolor: Color(0xFF9A9AEB),
text: 'Municipality'.tr,
textcolor: Color(0xFF2A2AD1),
sizetext: 20,
highlightcolor: Colors.transparent,
splashcolor: Color(0xFF2A2AD1).withOpacity(0.7),
icon: Icons.dashboard,
navigator: Navigator.push(
context,
MaterialPageRoute(builder: (context) => RDVmairie()),
),
),
button(
backgroundcolor: Color(0xFF87CEFA),
iconcolor: Color(0xFFaedbf9),
text: 'MisradAklita'.tr,
textcolor: Color(0xFF4169E1),
sizetext: 20,
highlightcolor: Colors.green,
splashcolor: Color(0xFF4169E1).withOpacity(0.7),
icon: Icons.account_balance,
navigator: Navigator.push(
context,
MaterialPageRoute(builder: (context) => RDVklita()),
),
),
button(
backgroundcolor: Color(0xFFC1C5D2),
iconcolor: Color(0xFFC1C5D2),
text: 'BureauDef'.tr,
textcolor: Color(0xFF5C6380),
sizetext: 20,
highlightcolor: Colors.green,
splashcolor: Color(0xFF5C6380).withOpacity(0.7),
icon: Icons.shield,
navigator: Navigator.push(
context,
MaterialPageRoute(builder: (context) => RDVbitahon()),
),
),
button(
backgroundcolor: Color(0xFFFFBE7C),
iconcolor: Color(0xFFFFBE7C),
text: 'Bank'.tr,
textcolor: Colors.brown,
sizetext: 20,
highlightcolor: Colors.green,
splashcolor: Colors.brown.withOpacity(0.7),
icon: Icons.paid,
navigator: Navigator.push(
context,
MaterialPageRoute(builder: (context) => RDVbank()),
),
),
button(
backgroundcolor: Color(0xFFED7377),
iconcolor: Color(0xFFED7377),
text: 'Post'.tr,
textcolor: Color(0xFFE32227),
sizetext: 20,
highlightcolor: Colors.green,
splashcolor: Color(0xFFE32227).withOpacity(0.7),
icon: Icons.local_shipping,
navigator: Navigator.push(
context,
MaterialPageRoute(builder: (context) => RDVpost()),
),
),*/