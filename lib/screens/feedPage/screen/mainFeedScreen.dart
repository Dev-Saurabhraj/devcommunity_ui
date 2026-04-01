import 'package:devcommunity/screens/feedPage/component/feedIconButton.dart';
import 'package:devcommunity/screens/feedPage/component/feedProfileCard.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapBackButton() {
      GoRouter.of(context).pop();
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  FeedIconButton(
                    icon: IconsLibrary.right,
                    onTap: () {
                      onTapBackButton();
                      HapticFeedback.lightImpact();
                    },
                  ),
                  Column(
                    crossAxisAlignment: .center,
                    children: [
                      Text(
                        'Discover',
                        style: GoogleFonts.inter(
                          textStyle: DVTextDecoration.titleLarge.copyWith(
                            fontSize: 36,
                            fontWeight: .bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Text(
                        'Muzaffarnagar, 201206',
                        style: GoogleFonts.inter(
                          textStyle: DVTextDecoration.bodyLarge.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  FeedIconButton(
                    icon: IconsLibrary.settingConfig,
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: FeedProfileCard(),
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  _whiteIcon(IconsLibrary.closeSmall),
                  _redIcon(IconsLibrary.like),
                  _whiteIcon(IconsLibrary.star),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _whiteIcon(String icon) {
  return Container(
    width: 78,
    height: 78,
    decoration: BoxDecoration(
      color: DVColor.white,
      borderRadius: BorderRadius.circular(39),
      boxShadow: [
        BoxShadow(
          color: DVColor.borderColorGrey,
          blurRadius: 25,
          offset: Offset(0, 20),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: SvgPicture.asset(icon),
    ),
  );
}

Widget _redIcon(String icon) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: DVColor.primaryColor,
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: DVColor.primaryColor.withOpacity(0.6),
          blurRadius: 16,
          offset: Offset(0, 12),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: SvgPicture.asset(icon),
    ),
  );
}
