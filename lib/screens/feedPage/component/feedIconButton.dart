import 'package:devcommunity/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedIconButton extends StatelessWidget{
  final String icon;
  final Function() onTap;
  const FeedIconButton({super.key, required this.icon, required this.onTap,});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: DVColor.borderColorGrey, width: 1.5),
          borderRadius: BorderRadius.circular(16)
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(icon, width: 24, height: 24,),
        ),
      ),
    );
  }
}