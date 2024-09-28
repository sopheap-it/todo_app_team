import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RithAdricUI extends StatelessWidget {
  const RithAdricUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(247, 0, 140, 255),
        title: Text(
          'Todo List',
          style: GoogleFonts.caprasimo(
            color: Colors.white,
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal, // U can use italic or s/th else...
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 35, right: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              // Add and use Google Fonts
              style: GoogleFonts.caprasimo(
                textStyle: Theme.of(context).textTheme.displayLarge,
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'September 30, 2024',
              // Add and use Google Fonts
              style: GoogleFonts.acme(
                textStyle: Theme.of(context).textTheme.displayLarge,
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(height: 20),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '✅',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Do exercise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 1.1,
                        decorationColor: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 105),
                    Text(
                      '6:00 am',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '✅',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Buy vegetables',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 1.1,
                        decorationColor: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 76),
                    Text(
                      '8:00 am',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '✅',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Make veg solad',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 1.1,
                        decorationColor: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 61),
                    Text(
                      '10:00 pm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '🔘',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Go to shopping',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 65),
                    Text(
                      '11:00 am',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '🔘',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Pay bills',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 130),
                    Text(
                      '2:00 pm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '🔘',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Go to walking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 88),
                    Text(
                      '6:00 pm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(226, 46, 46, 48),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      '🔘',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Check email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 99),
                    Text(
                      '7:00 am',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Dara
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70.0,
        height: 70.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 140, 255),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
