import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todo_app_team/kheavsokhan/ui_news_app/data/explore_data.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/explore_widget/explore_card_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/explore_widget/tween_button_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/search_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg_1,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.bg_1,
        // title screen
        title: Text(
          "Explore",
          style: AppFont.textStyleOne(
            fontWeight: FontWeight.bold,
          ),
        ),
        // icon notification
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: AppColor.text_3,
                    size: 26,
                  ),
                ),
                badges.Badge(
                  badgeContent: Text(
                    "9",
                    style: TextStyle(color: AppColor.text_1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                // button search
                const SearchWidget(text: "Let's see what happened today",),
                const SizedBox(
                  height: 20,
                ),
                // text description for screen
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Read More ",
                        style: TextStyle(
                          fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: AppColor.text_3
                        ),
                      ),
                      TextSpan(
                        text: "News",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: AppColor.text_4
                        ),
                      ),
                      TextSpan(
                        text: " and See What happen On ",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: AppColor.text_3
                        ),
                      ),
                      TextSpan(
                        text: "Another World",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: AppColor.text_4
                        ),
                      ),
                    ],
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20,),
                // button exclusive and live
                Row(
                  children: [
                    TweenButton(
                        isText: true,
                        isButton: true,
                        onTap: () {},
                        text: "Exclusive"
                    ),
                    const SizedBox(width: 10,),
                    TweenButton(
                        isText: false,
                        isButton: false,
                        onTap: () {},
                        text: "Live"
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                // list of new
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: textExplore.length,
                  itemBuilder: (context, index) {
                    return ExploreCardWidget(exploreData: textExplore[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
