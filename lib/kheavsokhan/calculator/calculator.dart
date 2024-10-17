import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/calculator/widget_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String numberOne = "";
  String numberTwo = "";
  String operand = "";
  String result = "";

  void onBtn(String value) {
    setState(() {
      if (value == "AC") {
        numberOne = "";
        numberTwo = "";
        operand = "";
        result = "";
      }
      else if (value == "+" || value == "-" || value == "X" || value == "/") {
        if (numberOne.isNotEmpty) {
          operand = value;
        }
      }
      else if (value == "=") {
        if (numberOne.isNotEmpty && numberTwo.isNotEmpty && operand.isNotEmpty) {
          double num1 = double.parse(numberOne);
          double num2 = double.parse(numberTwo);
          switch (operand) {
            case "+":
              result = (num1 + num2).toString();
              break;
            case "-":
              result = (num1 - num2).toString();
              break;
            case "X":
              result = (num1 * num2).toString();
              break;
            case "/":
              if (num2 != 0) {
                result = (num1 / num2).toString();
              } else {
                result = "Error";
              }
              break;
          }
          numberOne = result;
          numberTwo = "";
          operand = "";
        }
      }
      else {
        if (operand.isEmpty) {
          numberOne += value;
        } else {
          numberTwo += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          "Sokhan Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.bottomRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "$numberOne$operand$numberTwo".isEmpty
                          ? "0"
                          : "$numberOne$operand$numberTwo",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 80),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetButton(
                    text: "AC",
                    txtColor: Colors.black,
                    bgColor: Colors.grey,
                    onTap: () => onBtn("AC")
                ),
                WidgetButton(
                    text: "+/-",
                    txtColor: Colors.black,
                    bgColor: Colors.grey,
                    onTap: () {}
                ),
                WidgetButton(
                    text: "%",
                    txtColor: Colors.black,
                    bgColor: Colors.grey,
                    onTap: () {}
                ),
                WidgetButton(
                    text: "/",
                    txtColor: Colors.black,
                    bgColor: Colors.grey,
                    onTap: () => onBtn("/")
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetButton(
                    text: "7",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("7")
                ),
                WidgetButton(
                    text: "8",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("8")
                ),
                WidgetButton(
                    text: "9",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("9")
                ),
                WidgetButton(
                    text: "X",
                    txtColor: Colors.white,
                    bgColor: Colors.amber,
                    onTap: () => onBtn("X")
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetButton(
                    text: "4",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("4")
                ),
                WidgetButton(
                    text: "5",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("5")
                ),
                WidgetButton(
                    text: "6",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("6")
                ),
                WidgetButton(
                    text: "-",
                    txtColor: Colors.white,
                    bgColor: Colors.amber,
                    onTap: () => onBtn("-")
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetButton(
                    text: "1",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("1")
                ),
                WidgetButton(
                    text: "2",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("2")
                ),
                WidgetButton(
                    text: "3",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn("3")
                ),
                WidgetButton(
                    text: "+",
                    txtColor: Colors.white,
                    bgColor: Colors.amber,
                    onTap: () => onBtn("+")
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  child: TextButton(
                    onPressed: () => onBtn("0"),
                    child: const Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                WidgetButton(
                    text: ".",
                    txtColor: Colors.white,
                    bgColor: Colors.blueGrey,
                    onTap: () => onBtn(".")
                ),
                WidgetButton(
                    text: "=",
                    txtColor: Colors.white,
                    bgColor: Colors.amber,
                    onTap: () => onBtn("=")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
