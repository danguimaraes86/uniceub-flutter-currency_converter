import 'package:currency_converter/components/currency_selector.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          CurrencySelector(
            label: 'Moeda de Origem',
          ),
          CurrencySelector(
            label: 'Moeda de Destino',
          ),
          const Divider(
            height: 16,
            thickness: 4,
            indent: 16,
            endIndent: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Valor'),
                hintText: 'Digite o valor para conversão',
              ),
              keyboardType: TextInputType.number,
            ),
          )
        ],
      ),
    );
  }
}
