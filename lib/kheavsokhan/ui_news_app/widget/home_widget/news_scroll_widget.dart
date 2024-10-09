import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class NewsScrollWidget extends StatelessWidget {

  final Map<String, dynamic> newsDataList;

  const NewsScrollWidget({super.key, required this.newsDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  newsDataList['image'],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsDataList['title'],
                  style: AppFont.textStyleOne(
                    fontSize: 12,
                    color: AppColor.text_2,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  newsDataList['description'],
                  style: AppFont.textStyleOne(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(newsDataList['profile'], width: 20,),
                        SizedBox(width: 10,),
                        Text(
                            newsDataList['name'],
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                            newsDataList['time'],
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                            Icons.favorite_outline,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                            newsDataList['like'],
                          style: AppFont.textStyleOne(
                            color: AppColor.text_2
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Icon(
                            Icons.comment_outlined,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                            newsDataList['comment'],
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
