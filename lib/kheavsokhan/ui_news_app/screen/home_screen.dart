import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todo_app_team/kheavsokhan/ui_news_app/data/data_breaking_new.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/data/news_scroll_data.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/data/text_trending.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/profile_screen.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/breaking_new_card_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/button_trending_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/news_scroll_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/search_widget.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/widget/home_widget/two_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg_1,
      appBar: AppBar(
        backgroundColor: AppColor.bg_1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // profile picture
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
                child: const CircleAvatar(
                  backgroundImage: AssetImage("lib/kheavsokhan/ui_news_app/images/profile.png"),  // Your image provider (AssetImage, NetworkImage, etc.)
                )

            ),
            const SizedBox(width: 10),
            // name profile
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: AppFont.textStyleOne(
                    fontSize: 12,
                    color: AppColor.text_2,
                  ),
                ),
                Text(
                  "Kheav Sokhan",
                  style: AppFont.textStyleOne(
                    fontSize: 18,
                    color: AppColor.text_3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              // search box
              const Row(
                children: [
                  SearchWidget(text: "Let's see what happened today",),
                ],
              ),
              const SizedBox(height: 20,),
              // text breaking new and see all
              TwoTextWidget(bigText: "Breaking News !", smallText: "See all", func: () => Navigator.pushNamed(context, "")),
              const SizedBox(height: 20,),
              // news card
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: breakingNewList.map((newsData) {
                    return BreakingNewCardWidget(breakingNewsData: newsData);
                  }).toList(),
                ),
              ),
              const SizedBox(height: 40,),
              // text trending and see all
              TwoTextWidget(bigText: "Trending Right Now", smallText: "See all", func: () => Navigator.pushNamed(context, "")),
              const SizedBox(height: 20,),
              // box text trending
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: textTrending.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ButtonTrendingWidget(textTrending: item),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 40,),
              // list news
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: textNewsScroll.length,
                  itemBuilder: (context, index) {
                    return NewsScrollWidget(newsDataList: textNewsScroll[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
