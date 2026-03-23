import 'package:devcommunity/screens/gender/chooseGender.dart';
import 'package:devcommunity/screens/interestScreen/chooseInterestScreen.dart';
import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/globalButton.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderMainScreen extends StatelessWidget {
  const GenderMainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [ChooseGender(), ChooseInterestScreen()];
    return Scaffold(
      backgroundColor: DVColor.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: DVColor.borderColorGrey,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          IconsLibrary.right,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Skip",
                    style: GoogleFonts.inter(
                      textStyle: DVTextDecoration.bodyLarge.copyWith(
                        color: DVColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: screens[1],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 4),
            GlobalButton(onPressed: (){

            }, label: "Continue"),
          ],
        ),
      ),
    );
  }
}

