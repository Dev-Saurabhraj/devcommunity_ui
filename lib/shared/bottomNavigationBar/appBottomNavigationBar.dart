import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: DVColor.white,
          boxShadow: [
            BoxShadow(
              color: DVColor.borderColorGrey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(-2, -10),
            ),
            BoxShadow(
              color: DVColor.borderColorGrey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(2, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavigationIcon(IconsLibrary.like, 'Home', false, () {}),
            _bottomNavigationIcon(IconsLibrary.camera, 'Request', false, () {}),
            _bottomNavigationIcon(IconsLibrary.platte, 'Chat', true, () {}),
            _bottomNavigationIcon(IconsLibrary.ripple, 'Profile', false, () {}),
          ],
        ),
      ),
    );
  }
}

Widget _bottomNavigationIcon(
  String icon,
  String title,
  bool isSelected,
  Function() onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      alignment: AlignmentGeometry.center,
      children: [
         ?isSelected ? Align(
           alignment: .center,
           child: Container(
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: DVColor.primaryColor.withOpacity(0.1),
            ),
           ),
          ) : null,
        Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              height: 22,
              colorFilter: ColorFilter.mode(
                isSelected ? DVColor.primaryColor : DVColor.borderColorGrey,
                BlendMode.srcIn,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: DVTextDecoration.bodySmall.copyWith(
                  color: isSelected
                      ? DVColor.primaryColor
                      : DVColor.borderColorGrey,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
