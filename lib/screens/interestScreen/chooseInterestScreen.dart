import 'package:devcommunity/screens/bloc/signup/signUpBloc.dart';
import 'package:devcommunity/screens/bloc/signup/signUpEvent.dart';
import 'package:devcommunity/screens/bloc/signup/signupState.dart';
import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/fieldOfInterestList.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/icons.dart';

List<InterestModel> fieldOfInterests = [
  InterestModel(
    icon: IconsLibrary.camera,
    title: "Photography",
    isSelected: false,
  ),
  InterestModel(
    icon: IconsLibrary.weixinMarket,
    title: "Shopping",
    isSelected: false,
  ),
  InterestModel(icon: IconsLibrary.voice, title: "Karaoke", isSelected: false),
  InterestModel(
    icon: IconsLibrary.vienCharts,
    title: "Yoga",
    isSelected: false,
  ),
  InterestModel(
    icon: IconsLibrary.noodles,
    title: "Cooking",
    isSelected: false,
  ),
  InterestModel(icon: IconsLibrary.tennis, title: "Tennis", isSelected: true),
  InterestModel(icon: IconsLibrary.sport, title: "Run", isSelected: false),
  InterestModel(
    icon: IconsLibrary.ripple,
    title: "Swimming",
    isSelected: false,
  ),
  InterestModel(icon: IconsLibrary.platte, title: "Art", isSelected: false),
  InterestModel(
    icon: IconsLibrary.outdoor,
    title: "Travelling",
    isSelected: false,
  ),
  InterestModel(
    icon: IconsLibrary.parachute,
    title: "Extreme",
    isSelected: false,
  ),
  InterestModel(icon: IconsLibrary.music, title: "Music", isSelected: false),
  InterestModel(
    icon: IconsLibrary.gobletFull,
    title: "Drink",
    isSelected: false,
  ),
  InterestModel(
    icon: IconsLibrary.gameHandle,
    title: "Video games",
    isSelected: true,
  ),
];

class ChooseInterestScreen extends StatelessWidget {
  const ChooseInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, GenderState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Your interests",
              style: GoogleFonts.inter(
                textStyle: DVTextDecoration.displayMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Select a few of your interests and let everyone know what you’re passionate about.",
              style: GoogleFonts.inter(
                textStyle: DVTextDecoration.bodyLarge.copyWith(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: fieldOfInterests.length,
                addSemanticIndexes: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  final interest = fieldOfInterests[index];
                  bool isSelected = state.selectedInterests.contains(interest.title.toLowerCase());
                  return InkWell(
                    onTap: (){
                      context.read<SignUpBloc>().add(SelectInterestEvent(interest.title.toLowerCase()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              color: DVColor.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: DVColor.borderColorGrey,
                                width: 1.5,
                              ),
                            ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            interest.icon,
                            height: 19,
                            width: 19,
                            colorFilter: isSelected
                                ? ColorFilter.mode(DVColor.white, BlendMode.srcIn)
                                : ColorFilter.mode(
                                    DVColor.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            interest.title,
                            style: GoogleFonts.inter(
                              textStyle: DVTextDecoration.bodyLarge.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }
    );
  }
}
