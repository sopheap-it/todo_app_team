import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/BottomNavigationBar_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/button_widget.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            "lib/kheavsokhan/ui_news_app/images/welcome.jpg",
            fit: BoxFit.cover, // Cover the entire container
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Don't Miss What Happen In Another Part of The World",
                  textAlign: TextAlign.center,
                  style: AppFont.textStyleOne(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: AppColor.text_1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Hear. See. watch something in the world using Tidings and share it with your family or friend",
                  textAlign: TextAlign.left,
                  style: AppFont.textStyleOne(
                    fontSize: 14,
                    color: AppColor.text_2
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                    text: "Get Started",
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomNavigationBarWidget()),
                      );
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
