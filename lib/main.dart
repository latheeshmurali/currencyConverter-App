import 'package:currency/currency_cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'currency app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Currency converter'),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.pinkAccent,
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(color: Colors.pinkAccent),
                    decoration: const InputDecoration(
                      hintText: 'Please enter the money in USD',
                      hintStyle: TextStyle(
                        color: Colors.pinkAccent,
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.pinkAccent,
                      filled: true,
                      fillColor: Colors.black45,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(220, 255, 64, 128)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 83.26;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('convert'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
