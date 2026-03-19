import 'package:devcommunity/router/routerConstant.dart';
import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/icons.dart';
import 'package:devcommunity/utils/textFieldDecoration.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/globalButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.17),
                Text(
                  'Welcome back',
                  style: DVTextDecoration.displayMedium.copyWith(fontWeight: FontWeight.bold, color: DVColor.primaryColor)
                ),
                Text(
                  'LogIn to view daily updates.',
                  style: DVTextDecoration.bodyLarge.copyWith(color: Colors.grey)
                ),
                SizedBox(height: 30),
                Text("Email", style: DVTextDecoration.bodyLarge),
                SizedBox(height: 10,),
                TextFieldDecoration(
                  controller: emailController,
                  label: "Enter you email",
                  obscureText: false,
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(height: 25),
                Text("Password", style: DVTextDecoration.bodyLarge,),
                SizedBox(height: 10,),
                TextFieldDecoration(
                  controller: passwordController,
                  label: "Enter your password",
                  obscureText: true,
                  suffixIcon: Icons.remove_red_eye,
                  prefixIcon: Icons.password_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: .end,
                    children: [
                      Text('Forgot password?', style: DVTextDecoration.bodyMedium.copyWith(color: DVColor.primaryColor ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GlobalButton( onPressed: (){
                  GoRouter.of(context).pushNamed(RouterConstant.gender);
                }, label: "Log In",),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Container(width: width/3, height: 2, color: Colors.grey.shade400,),
                    Text('Or sign up\n with', textAlign: TextAlign.center, style: DVTextDecoration.bodyMedium,),
                    Container(width: width/3, height: 2, color: Colors.grey.shade400,),
                  ],

                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    _iconBox(IconsLibrary.google, (){}),
                    _iconBox(IconsLibrary.facebook, (){}),
                    _iconBox(IconsLibrary.apple, (){}),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Terms & Conditions', style: DVTextDecoration.bodyLarge.copyWith(color: DVColor.primaryColor),),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _iconBox( String assetName, Function () onTap ){

  return InkWell(
    onTap:() {
      onTap();
      HapticFeedback.lightImpact();
    },
    child: Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300, width: 2)
      ),
      child: Center(
        child: SvgPicture.asset(assetName),
      ),

    ),
  );
}
