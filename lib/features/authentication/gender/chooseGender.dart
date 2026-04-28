import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../../utils/textStyle.dart';
import '../bloc/signup/signUpBloc.dart';
import '../bloc/signup/signUpEvent.dart';
import '../bloc/signup/signupState.dart';

class ChooseGender extends StatelessWidget{
  const ChooseGender({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, GenderState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "I am a ",
              style: GoogleFonts.inter(
                textStyle: DVTextDecoration.displayMedium,
              ),
            ),
            SizedBox(height: 30),
            _genderBox( context, 'Man',  state),
            _genderBox(context , 'Woman',  state),
            _genderBox(context, 'Other',  state),
          ],
        );
      }
    );
  }
}



Widget _genderBox(BuildContext context , String title, GenderState state) {
 bool isSelected = state.selectedGender == title;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: Container(
      height: 57,
      width: double.infinity,
      decoration: isSelected
          ? BoxDecoration(
        color: DVColor.primaryColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: DVColor.white,
            blurRadius: 15,
            offset: Offset(-4, -4),
          ),
          BoxShadow(
            color: DVColor.primaryColor,
            blurRadius: 15,
            offset: Offset(4, 4),
          ),
        ],
      )
          : BoxDecoration(
        border: Border.all(color: DVColor.borderColorGrey, width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        splashColor: DVColor.white,
        onTap: () {
          HapticFeedback.lightImpact();
          context.read<SignUpBloc>().add(SelectGender(title));
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: DVTextDecoration.bodyLarge.copyWith(
                      color: isSelected ? Colors.white : null,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  IconsLibrary.checkSmall,
                  width: 20,
                  height: 20,
                  colorFilter: isSelected
                      ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
