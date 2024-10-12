import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: ClipOval(
            child: Image.asset(
              'assets/images/myprofile.jpg',
              width: 60,
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Kong Usa!',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon:const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                    hintText: 'Enter task title',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                  ),
                  maxLines: 1,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Breaking News !"),
                    TextButton(onPressed: () {}, child: Text("See all"))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/myprofile.jpg'))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
