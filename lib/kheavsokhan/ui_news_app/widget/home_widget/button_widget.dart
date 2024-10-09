import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.button_1,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppFont.textStyleOne(
                  color: AppColor.text_1,
                  fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}
