import 'package:flutter/material.dart';
import '../constants/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.onPressed,
  });

  final String imageSrc, text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding,
          horizontal: defaultPadding * 2.5,
        ),
        foregroundColor: black,
        backgroundColor: const Color(0xFFE8F0F9),
        side: const BorderSide(color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          const SizedBox(width: defaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
