import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class TweenButton extends StatelessWidget {

  final String text ;
  final void Function()? onTap;
  final bool isButton;
  final bool isText;

  const TweenButton({super.key, required this.onTap, required this.text, required this.isButton, required this.isText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: onTap,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
            backgroundColor: isButton ? AppColor.button_1 : AppColor.button_2,
          ),
            child: Text(
                text,
              style: AppFont.textStyleOne(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: isText ? AppColor.text_1 : AppColor.text_2,
              ),
            )
        ),
      ],
    );
  }
}
