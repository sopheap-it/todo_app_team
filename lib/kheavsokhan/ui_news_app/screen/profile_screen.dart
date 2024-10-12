import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool _isSwitch = true;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitch = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg_1,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    // profile picture
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("lib/kheavsokhan/ui_news_app/images/profile.png"),  // Your image provider (AssetImage, NetworkImage, etc.)
                    ),
                    const SizedBox(height: 20,),
                    // name
                    Text(
                      "Kheav Sokhan",
                      style: AppFont.textStyleOne(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    // email
                    Text(
                      "sokhankheav@gamil.com",
                      style: AppFont.textStyleOne(
                        color: AppColor.text_2
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextButton(
                        onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: AppColor.button_3,
                      ),
                        child: Text(
                            "Edit Profile",
                          style: AppFont.textStyleOne(
                            color: AppColor.text_1
                          ),
                        ),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Inventories",
                    style: AppFont.textStyleOne(
                      fontSize: 12,
                      color: AppColor.text_2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Card(
                color: AppColor.bg_4,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    width: 2,
                    color: AppColor.text_1
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: AppColor.bg_1,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      color: AppColor.text_1,
                                    )
                                  ]
                                ),
                                child: Icon(
                                  Icons.home_sharp,
                                  color: AppColor.text_2,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "My storeis",
                                style: AppFont.textStyleOne(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(width: 10,),
                              badges.Badge(
                                badgeContent: Text(
                                  "9",
                                  style: TextStyle(color: AppColor.text_1),
                                ),
                                  badgeStyle: badges.BadgeStyle(
                                      badgeColor: AppColor.text_5
                                  )
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.text_2,
                              )
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: AppColor.text_1,
                                      )
                                    ]
                                ),
                                child: Icon(
                                  Icons.support,
                                  color: AppColor.text_2,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Support",
                                style: AppFont.textStyleOne(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.text_2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Preferences",
                    style: AppFont.textStyleOne(
                      fontSize: 12,
                      color: AppColor.text_2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Card(
                color: AppColor.bg_4,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                      width: 2,
                      color: AppColor.text_1
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: AppColor.bg_1,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: AppColor.text_1,
                                      )
                                    ]
                                ),
                                child: Icon(
                                  Icons.notifications,
                                  color: AppColor.text_2,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Push notification",
                                style: AppFont.textStyleOne(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Spacer(),
                              Switch(
                                value: _isSwitch,
                                onChanged: _toggleSwitch,
                                activeColor: AppColor.text_1,
                                activeTrackColor: AppColor.text_5,
                                inactiveThumbColor: AppColor.text_3,
                                inactiveTrackColor: AppColor.text_2,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: AppColor.bg_1,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: AppColor.text_1,
                                      )
                                    ]
                                ),
                                child: Icon(
                                  Icons.qr_code_2,
                                  color: AppColor.text_2,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Face ID",
                                style: AppFont.textStyleOne(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Spacer(),
                              Switch(
                                value: _isSwitch,
                                onChanged: _toggleSwitch,
                                activeColor: AppColor.text_1,
                                activeTrackColor: AppColor.text_5,
                                inactiveThumbColor: AppColor.text_3,
                                inactiveTrackColor: AppColor.text_2,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: AppColor.bg_1,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: AppColor.text_1,
                                      )
                                    ]
                                ),
                                child: Icon(
                                  Icons.password,
                                  color: AppColor.text_2,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "PIN Code",
                                style: AppFont.textStyleOne(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Spacer(),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.text_2,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: AppColor.text_7,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: AppColor.text_7,
                                      )
                                    ]
                                ),
                                child: Icon(
                                  Icons.logout,
                                  color: AppColor.text_6,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Logout",
                                style: AppFont.textStyleOne(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  color: AppColor.text_6
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
