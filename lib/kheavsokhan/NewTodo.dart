import 'package:flutter/material.dart';

class Newtodo extends StatelessWidget {
  const Newtodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            "Todo List",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(bottom: 20),
            onPressed: () {},
            icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              color: Colors.black,
            ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.more_vert,
                  size: 25,
                  color: Colors.black,
                ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 20),
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Todo List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "March 4 2010",
                      style: TextStyle(
                        color: Colors.white24,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 50,
                    width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.white24,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                            "Do exercise",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white24,
                            color: Colors.white24,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "6:00 am",
                          style: TextStyle(
                            color: Colors.white24
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.white24,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Buy Vegetable",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.white24,
                              color: Colors.white24,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "8:00 am",
                            style: TextStyle(
                                color: Colors.white24
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.white24,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Make veg salad",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.white24,
                              color: Colors.white24,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "10:00 am",
                            style: TextStyle(
                                color: Colors.white24
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Go to shopping",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "11:00 am",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Pay Bills",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "2:00 pm",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Go to walking",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "6:00 pm",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Check email",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "7:00 pm",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
          onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
    
  }
}
