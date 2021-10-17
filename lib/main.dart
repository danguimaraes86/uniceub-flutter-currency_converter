import 'package:currency_converter/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CurrencyConverter());

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Conversor de Moedas',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
