import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/globalButton.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderMainScreen extends StatelessWidget{
  const GenderMainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      HapticFeedback.lightImpact();
                      Navigator.pop(context);
                    },

                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: DVColor.borderColorGrey, width: 1.5),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: SvgPicture.asset(IconsLibrary.right, width: 24, height: 24),
                      ),


                    ),
                  ),
                  Spacer(),
                  Text("Skip", style: GoogleFonts.inter(textStyle: DVTextDecoration.bodyLarge.copyWith(color: DVColor.primaryColor, fontWeight: FontWeight.bold),))
                ],
              ),
              
            ),
            SizedBox(
              height: 30,
            ),
            Text("I am a ", style: GoogleFonts.inter(textStyle: DVTextDecoration.displayMedium),),
            SizedBox(
              height: 30,
            ),
            _genderBox('Man', true),
            _genderBox('Woman', false),
            _genderBox('Other', false),
            SizedBox(
              height: MediaQuery.of(context).size.height/4,
            ),
            GlobalButton(onPressed: (){}, label: "Continue")


          ],
        ),
      ),

    );
  }
}

Widget _genderBox(String title, bool isSelected){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: Container(
          height: 57,
          width: double.infinity,
          decoration: isSelected?  BoxDecoration(
            color: DVColor.primaryColor,
              borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: DVColor.white,
                  blurRadius: 15,
                  offset: Offset(-4, -4)
              ),
              BoxShadow(
                color: DVColor.primaryColor,
                blurRadius: 15,
                offset: Offset(4, 4)
              ),
            ]
          ) : BoxDecoration(
            border: Border.all(color: DVColor.borderColorGrey, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ) ,
      child: InkWell(
        splashColor: DVColor.white,
        onTap: (){
          HapticFeedback.lightImpact();
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Text(title, style: GoogleFonts.poppins(textStyle: DVTextDecoration.bodyLarge.copyWith(color: isSelected ?  Colors.white : null, fontWeight: FontWeight.bold ),), ),
                Spacer(),
                SvgPicture.asset(IconsLibrary.checkSmall, width: 20, height: 20, colorFilter: isSelected? ColorFilter.mode(Colors.white, BlendMode.srcIn) : null,)
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
