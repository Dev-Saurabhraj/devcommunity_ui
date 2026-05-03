import 'package:devcommunity/shared/bottomNavigationBar/appBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,

          ),
          AppBottomNavigationBar(),
        ],
      ),
    );
  }
}
