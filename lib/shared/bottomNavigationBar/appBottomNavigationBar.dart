import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBottomNavigationBar extends StatelessWidget{
   const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: DVColor.white,
          boxShadow: [
            BoxShadow(
              color: DVColor.borderColorGrey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(-2, -10)
            )
          ]
        ),
        child: Row(
          children: [
            _bottomNavigationIcon(IconsLibrary.like, 'Home', true, (){}),
            _bottomNavigationIcon(IconsLibrary.camera, 'Request', false, (){}),
            _bottomNavigationIcon(IconsLibrary.platte, 'Chat', false, (){}),
            _bottomNavigationIcon(IconsLibrary.ripple, 'Profile', false, (){}),
          ],
        ),
      ),
    );
  }

}


Widget _bottomNavigationIcon(String icon, String title, bool isSelected, Function() onTap){
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset(icon, width: 24, height: 24, colorFilter: ColorFilter.mode(isSelected ? DVColor.primaryColor : DVColor.borderColorGrey, BlendMode.srcIn),),
        Text('Home', style: GoogleFonts.inter(textStyle: DVTextDecoration.bodySmall.copyWith(color: isSelected ? DVColor.primaryColor : DVColor.borderColorGrey)),)
      ],
    ),
  );
}