import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class TwoTextWidget extends StatelessWidget {
  const TwoTextWidget({super.key, required this.bigText, required this.smallText, required this.func});

  final String bigText ;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppFont.textStyleOne(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.text_3
            ),
          ),
          InkWell(
            onTap: func,
            child: Text(
              smallText,
              style: AppFont.textStyleOne(
                  fontSize: 16,
                  color: AppColor.text_4
              ),
            ),
          ),
        ],
      ),
    );
  }
}
