import 'package:devcommunity/screens/bloc/signup/signUpBloc.dart';
import 'package:devcommunity/screens/bloc/signup/signUpEvent.dart';
import 'package:devcommunity/screens/gender/chooseGender.dart';
import 'package:devcommunity/screens/interestScreen/chooseInterestScreen.dart';
import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/globalButton.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/signup/signupState.dart';

class GenderMainScreen extends StatelessWidget {
  const GenderMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [ChooseGender(), ChooseInterestScreen()];
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: Scaffold(
        backgroundColor: DVColor.white,
        body: BlocBuilder<SignUpBloc, GenderState>(
          builder: (context, state) {
            return Padding(
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
                            if (state.count > 0) {
                              context.read<SignUpBloc>().add(
                                BackToLastPageEvent(),
                              );
                            } else {
                              Navigator.pop(context);
                            }
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
                  Expanded(child: screens[state.count]),
                  GlobalButton(
                    onPressed: () {
                      if (state.count < screens.length-1) {
                        context.read<SignUpBloc>().add(MoveToNextPageEvent());
                      }
                    },
                    label: "Continue",
                  ),
                  SizedBox(height: 50),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
