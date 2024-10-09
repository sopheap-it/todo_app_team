import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/BottomNavigationBar_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/button_widget.dart';

import '../style/fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/kheavsokhan/ui_news_app/images/welcome.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Don't Miss What Happen In Another Part of The World",
                    style: AppFont.textStyleOne(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColor.text_1
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Hear. See. watch something in the world using Tidings and share it with your family or friend",
                    style: AppFont.textStyleOne(
                      fontSize: 14,
                      color: AppColor.text_2
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                    text: "Get Started",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()),
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
