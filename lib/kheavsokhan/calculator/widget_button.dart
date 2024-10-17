import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.text,
    required this.txtColor,
    required this.bgColor,
    required this.onTap,
  });

  final String text;
  final Color txtColor;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
