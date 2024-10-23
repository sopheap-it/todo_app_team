import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/testloop/models.dart';

class ShowList extends StatelessWidget {
  const ShowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loop"),
      ),
      body: ListView.builder(
        itemCount: listData.length,
          itemBuilder: (context, index){
            final team = listData[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(team.name, style: const TextStyle(fontSize: 20, color: Colors.white),),
                  const SizedBox(width: 20,),
                  Text(team.gender, style: const TextStyle(fontSize: 20, color: Colors.white),),
                  const SizedBox(width: 20,),
                  Text(team.phone, style: const TextStyle(fontSize: 20, color: Colors.white),),
                ],
              ),
            );
          }
      ),
    );
  }
}
