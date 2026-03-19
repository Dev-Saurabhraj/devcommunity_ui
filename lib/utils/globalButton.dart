import 'package:devcommunity/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:devcommunity/utils/textStyle.dart';
import 'package:flutter/services.dart';

class GlobalButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String label;

  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  State<GlobalButton> createState() => _GlobalButtonState();
}

class _GlobalButtonState extends State<GlobalButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) {
        setState(() => isPressed = false);
        widget.onPressed();
        HapticFeedback.heavyImpact();
      },
      onTapCancel: () => setState(() => isPressed = false),

      child: AnimatedScale(
        duration: const Duration(milliseconds: 100),
        scale: isPressed ? 0.95 : 1.0,

        child: Container(
          height: 52,
          width: double.infinity,
          alignment: Alignment.center,

          decoration: BoxDecoration(
            color: DVColor.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Text(
            widget.label,
            style: DVTextDecoration.headlineMedium.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}