import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class ExploreCardWidget extends StatelessWidget {

  final Map<String, dynamic> exploreData;

  const ExploreCardWidget({super.key, required this.exploreData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 340,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: AppColor.bg_2,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  exploreData['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    exploreData['description'],
                    style: AppFont.textStyleOne(
                      fontWeight: FontWeight.bold,
                      color: AppColor.text_3
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Image.asset(
                          exploreData['profile'],
                        width: 20,
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        exploreData['date']
                      ),
                      const SizedBox(width: 10,),
                      Text(exploreData['name']),
                      const SizedBox(width: 10,),
                      const Icon(Icons.favorite_outline, size: 20,),
                      const SizedBox(width: 5,),
                      Text(exploreData['like']),const SizedBox(width: 10,),
                      const Icon(Icons.comment_outlined, size: 20,),
                      const SizedBox(width: 5,),
                      Text(exploreData['comment']),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
