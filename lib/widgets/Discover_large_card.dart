import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/Constants/icons.dart';
import 'package:untitled/widgets/svg_asset.dart';

class DiscoverLargeCard extends StatelessWidget {
  final String? title;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final Function? onTap;

  final dynamic icon;
  const DiscoverLargeCard(
      {Key? key,
      this.title,

      this.gradientStartColor,
      this.gradientEndColor,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.onTap,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: Colors.blueAccent,
        splashColor: Colors.lightBlueAccent,
        hoverColor: Colors.lightBlueAccent,
        focusColor: Colors.lightBlueAccent,
        onTap: () => onTap!(),
        borderRadius: BorderRadius.circular(26),
        child: Container(
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  spreadRadius: 3.0,
                  offset: Offset(2,2)
              ),
            ],
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(
              colors: [
                gradientStartColor ?? Color(0xff441DFC),
                gradientEndColor ?? Color(0xff4E81EB),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: SizedBox(
            height: 70.w,
            width: 300.w,
            child: Stack(
              children: [
                vectorBottom ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 75.w,
                          width: 305.w,
                          assetName: AssetName.vectorBottom),
                    ),
                vectorTop ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 75.w,
                          width: 305.w,
                          assetName: AssetName.vectorTop),
                    ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w, top: 22.5
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 24.w,
                        color: Colors.white,
                      ),
                      SizedBox(width: 18,),
                      Text(
                        title!,
                        style: TextStyle(
                            fontSize: 15.w,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
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
