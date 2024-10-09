import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class BreakingNewCardWidget extends StatelessWidget {

  final Map<String, dynamic> breakingNewsData;

  const BreakingNewCardWidget({
    super.key, required this.breakingNewsData
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 200,
      child: Stack(
        children: [
          // Background image container
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: 200,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                    breakingNewsData['image_bg'],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text positioned on top of the image
          Positioned(
            width: MediaQuery.of(context).size.width / 1.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.bg_3,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(breakingNewsData['image_temp'], width: 25,),
                            Text(breakingNewsData['status'], style: AppFont.textStyleOne(
                                color: AppColor.text_1
                            )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.bg_3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(breakingNewsData['title'], style: AppFont.textStyleOne(
                                    color: AppColor.text_1
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(width: 2,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.bg_3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(breakingNewsData['sub_title'], style: AppFont.textStyleOne(
                                    color: AppColor.text_1
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            breakingNewsData['image_logo'],
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(breakingNewsData['name'], style: AppFont.textStyleOne(color: AppColor.text_3, fontWeight: FontWeight.bold),),
                        Text(breakingNewsData['last_time'], style: AppFont.textStyleOne(color: AppColor.text_1),),
                        Icon(Icons.favorite_outline, color: AppColor.text_1,),
                        Text(breakingNewsData['like'], style: AppFont.textStyleOne(color: AppColor.text_1),),
                        Icon(Icons.message_outlined, color: AppColor.text_1,),
                        Text(breakingNewsData['comment'], style: AppFont.textStyleOne(color: AppColor.text_1),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            breakingNewsData['description'],
                            style: AppFont.textStyleOne(
                                color: AppColor.text_1
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
