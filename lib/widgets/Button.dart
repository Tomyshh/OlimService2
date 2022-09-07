import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Color?backgroundcolorClaire;
  final Color?backgroundcolorFonce;
  final iconcolor;
  final Color?textcolor;
  final String?text;
  final double sizetext;
  final Color?splashcolor;
  final Color?highlightcolor;
  final icon;
  final onTap;

  const button(
      {Key? key,
        required this.backgroundcolorClaire,
        required this.backgroundcolorFonce,
        required this.iconcolor,
        required this.textcolor,
        required this.text,
        required this.sizetext,
        required this.splashcolor,
        required this.highlightcolor,
        required this.icon,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(colors: [backgroundcolorFonce??Color(0xff441DFC), backgroundcolorClaire??Color(0xff4E81EB)]),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap ?? () {},
            splashColor: splashcolor,
            borderRadius: BorderRadius.circular(20.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(icon, color: iconcolor),
                ),
                Center(
                  child: Text(
                    text??'Text',
                    style: TextStyle(
                      color: textcolor,
                      fontFamily: 'Comfortaa',
                      fontStyle: FontStyle.normal,
                      fontSize: sizetext,
                    ),
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
