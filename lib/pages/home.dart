import 'package:currency_converter/components/seletor_destino.dart';
import 'package:currency_converter/components/seletor_origem.dart';
import 'package:currency_converter/components/value_converter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Moedas'),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeletorOrigem(),
          SeletorDestino(),
          const Divider(
            height: 16,
            thickness: 4,
            indent: 16,
            endIndent: 16,
          ),
          ValueConverter(),
        ],
      ),
    );
  }
}
