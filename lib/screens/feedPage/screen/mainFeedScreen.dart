import 'package:flutter/material.dart';

class MainFeedScreen extends StatelessWidget{
  const MainFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("this is feed page "),
        ),
      ),
    );
  }
}