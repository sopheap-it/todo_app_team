import 'package:flutter/material.dart';
class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});

  Widget examCard(String title, String subject, String date, String className, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xFF77986CB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
              ),
              Text(subject,
                  style: const TextStyle(fontSize: 15, color: Colors.white)),
              const SizedBox(height: 30),
              Text(date, style: const TextStyle(fontSize: 15, color: Colors.white)),
              Text(className, style: const TextStyle(fontSize: 15, color: Colors.white)),
              const SizedBox(height: 30),
              Container(
                height: 40,
                width: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(imagePath),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF77986CB),
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text("Exams",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/img.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            examCard("Basic Algebra", "Maths 101", "January 10, 2022", "Class 3B", "assets/images/book_exam.png"),
            examCard("Economics", "Economics 101", "January 10, 2022", "Class 3B", "assets/images/economics.png"),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xFF77986CB), borderRadius: BorderRadius.circular(70)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign up for another exam",
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
