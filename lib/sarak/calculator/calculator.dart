import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart'; // Add this import

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _displayText = '0';
  String _result = '';
  void onButtonPressed(String value) {
    setState(() {
      if (value == 'AC') {
        _displayText = '0';
        _result = '';
      } else if (value == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(_displayText.replaceAll('x', '*'));
          ContextModel cm = ContextModel();
          double eval = exp.evaluate(EvaluationType.REAL, cm);
          _result = eval.toStringAsFixed(1);
        } catch (e) {
          _result = 'Error';
        }
      } else {
        if (_displayText == '0') {
          _displayText = value;
        } else {
          _displayText += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _displayText,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  '=$_result',
                  style: TextStyle(fontSize: 30, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                buildButton('AC'),
                buildButton('%'),
                buildButton('/'),
                buildButton('x'),
                buildButton('7'),
                buildButton('8'),
                buildButton('9'),
                buildButton('-'),
                buildButton('4'),
                buildButton('5'),
                buildButton('6'),
                buildButton('+'),
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('.'),
                buildButton('0'),
                buildButton('='),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton(String value) {
    return GestureDetector(
      onTap: () => onButtonPressed(value),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-2, -2),
              blurRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
