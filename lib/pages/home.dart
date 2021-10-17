import 'package:currency_converter/components/seletor_destino.dart';
import 'package:currency_converter/components/seletor_origem.dart';
import 'package:currency_converter/components/value_converter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Moedas'),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SeletorOrigem(),
          SeletorDestino(),
          Divider(
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
