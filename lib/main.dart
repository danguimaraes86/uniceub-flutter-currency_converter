import 'package:currency_converter/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CurrencyConverter());

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Currency Converter',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
