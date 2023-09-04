import 'package:example/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? textSize;
  final String text;
  final Function()? onPressed;
  final double? borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textSize,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
          ),
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize ?? 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
