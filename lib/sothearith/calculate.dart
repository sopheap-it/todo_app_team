import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  // Store User Input
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  // Store perator result
  String _result = "";

  void _calculateResults(String operator) {
    setState(() {
      double num1 = double.tryParse(_controller1.text) ?? 0;
      double num2 = double.tryParse(_controller2.text) ?? 0;

      switch (operator) {
        case '+':
          _result = 'Result: ${num1 + num2}';
          break;
        case '-':
          _result = 'Result: ${num1 - num2}';
          break;
        case 'x':
          _result = 'Result: ${num1 * num2}';
          break;
        case '/':
          _result =
              num2 != 0 ? 'Result: ${num1 / num2}' : 'Eror: Division by zero';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () => _calculateResults('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.redAccent,
                  ),
                  onPressed: () => _calculateResults('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(204, 255, 255, 0),
                  ),
                  onPressed: () => _calculateResults('x'),
                  child: const Text('x'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => _calculateResults('/'),
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
}

void main() {
  runApp(const MaterialApp(
    home: Calculate(),
  ));
}
