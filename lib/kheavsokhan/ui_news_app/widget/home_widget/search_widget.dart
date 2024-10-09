import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.11,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.bg_2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Let's see what happened to day",
                hintStyle: TextStyle(
                  color: AppColor.text_2,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: AppColor.text_2,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
