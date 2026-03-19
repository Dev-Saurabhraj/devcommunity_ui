import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldDecoration extends StatelessWidget {
  final TextEditingController controller ;
  final String label;

  final bool obscureText;

  final IconData? suffixIcon;
  final IconData prefixIcon;


  const TextFieldDecoration({
    super.key,
    required this.controller,
    required this.label,
    required this.obscureText,
    this.suffixIcon, required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        fillColor: Colors.black45,
        suffixIcon: Icon(suffixIcon, ),
        prefixIcon: Icon(prefixIcon, weight: 3,),
        label: Text(label, style: GoogleFonts.inter(color: Colors.grey.shade500, fontWeight: FontWeight.w500), ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
