import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class ButtonTrendingWidget extends StatelessWidget {
  final Map<String, dynamic> textTrending;

  const ButtonTrendingWidget({super.key, required this.textTrending});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.bg_2,
            width: 2.0,
          ),
          color: AppColor.bg_1,
        ),
        child: Text(
          textTrending['text'],
          style: AppFont.textStyleOne(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.text_2
          ),
        ),
      ),
    );
  }
}
