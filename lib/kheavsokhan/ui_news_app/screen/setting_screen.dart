import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/colors.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/style/fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isSwitch = true;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitch = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg_2,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColor.bg_5,
        title: Text(
            "Setting",
          style: AppFont.textStyleOne(
            color: AppColor.text_1
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Common",
              textAlign: TextAlign.left, // Text alignment
              style: AppFont.textStyleOne(
                color: AppColor.text_2,
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: AppColor.bg_1,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.public,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Language",
                          style: AppFont.textStyleOne(
                            color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "English",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                            Icons.cloud_outlined,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Environment",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Production",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              "Account",
              textAlign: TextAlign.left, // Text alignment
              style: AppFont.textStyleOne(
                color: AppColor.text_2,
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: AppColor.bg_1,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                            Icons.phone,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Phone number",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                            Icons.email,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Environment",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.login_outlined,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Sign out",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              "Security",
              textAlign: TextAlign.left, // Text alignment
              style: AppFont.textStyleOne(
                color: AppColor.text_2,
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: AppColor.bg_1,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.screen_lock_landscape,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Lock app in background",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          value: _isSwitch,
                          onChanged: _toggleSwitch,
                          activeColor: AppColor.text_1,
                          activeTrackColor: AppColor.text_6,
                          inactiveThumbColor: AppColor.text_2,
                          inactiveTrackColor: AppColor.text_1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.fingerprint,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "User fingerprint",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          value: _isSwitch,
                          onChanged: _toggleSwitch,
                          activeColor: AppColor.text_1,
                          activeTrackColor: AppColor.text_6,
                          inactiveThumbColor: AppColor.text_2,
                          inactiveTrackColor: AppColor.text_1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Change password",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          value: _isSwitch,
                          onChanged: _toggleSwitch,
                          activeColor: AppColor.text_1,
                          activeTrackColor: AppColor.text_6,
                          inactiveThumbColor: AppColor.text_2,
                          inactiveTrackColor: AppColor.text_1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              "Term",
              textAlign: TextAlign.left, // Text alignment
              style: AppFont.textStyleOne(
                color: AppColor.text_2,
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: AppColor.bg_1,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.file_open,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Term of Service",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: AppColor.text_2,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Open source licenses",
                          style: AppFont.textStyleOne(
                              color: AppColor.text_2
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: AppColor.text_2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
