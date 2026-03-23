import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/fieldOfInterestList.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/icons.dart';
List<InterestModel> fieldOfInterests = [
  InterestModel(icon: IconsLibrary.camera, title: "Photography"),
  InterestModel(icon: IconsLibrary.weixinMarket, title: "Shopping"),
  InterestModel(icon: IconsLibrary.voice, title: "Karaoke"),
  InterestModel(icon: IconsLibrary.vienCharts, title: "Yoga"),
  InterestModel(icon: IconsLibrary.noodles, title: "Cooking"),
  InterestModel(icon: IconsLibrary.tennis, title: "Tennis"),
  InterestModel(icon: IconsLibrary.sport, title: "Run"),
  InterestModel(icon: IconsLibrary.ripple, title: "Swimming"),
  InterestModel(icon: IconsLibrary.camera, title: "Art"),
  InterestModel(icon: IconsLibrary.camera, title: "Extreme"),
  InterestModel(icon: IconsLibrary.camera, title: "Music"),
  InterestModel(icon: IconsLibrary.camera, title: "Drink"),
  InterestModel(icon: IconsLibrary.camera, title: "Video games"),
];

class ChooseInterestScreen extends StatelessWidget {
  const ChooseInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          "Choose your interests",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: fieldOfInterests.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.5,
            ),
            itemBuilder: (context, index) {
              final interest = fieldOfInterests[index];

              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: DVColor.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: DVColor.borderColorGrey, width: 1.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      interest.icon,
                      height: 19,
                      width: 19,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      interest.title,
                      style: GoogleFonts.inter(textStyle: DVTextDecoration.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}