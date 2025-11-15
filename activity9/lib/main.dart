import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CalculatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  double? _result;

  void _calculate(String operation) {
    final double? num1 = double.tryParse(_num1Controller.text);
    final double? num2 = double.tryParse(_num2Controller.text);

    if (num1 == null || num2 == null) {
      setState(() {
        _result = null;
      });
      return;
    }

    setState(() {
      switch (operation) {
        case 'add':
          _result = num1 + num2;
          break;
        case 'subtract':
          _result = num1 - num2;
          break;
        case 'multiply':
          _result = num1 * num2;
          break;
        case 'divide':
          _result = num2 != 0 ? num1 / num2 : double.nan;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('add'),
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('subtract'),
                  child: const Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('multiply'),
                  child: const Text('Multiply'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('divide'),
                  child: const Text('Divide'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              _result == null
                  ? 'Enter numbers to calculate.'
                  : _result!.isNaN
                      ? 'Cannot divide by zero.'
                      : 'Result: $_result',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
