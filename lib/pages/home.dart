import 'package:currency_converter/models/currency.dart';
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
      body: CurrencySelect(),
    );
  }
}

class CurrencySelect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CurrencySelectState();
  }
}

class CurrencySelectState extends State<CurrencySelect> {
  String moedaOrigem = 'hint';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Moeda de Origem'),
          DropdownButton<String>(
            hint: Text('Selecione uma moeda'),
            icon: Icon(Icons.monetization_on),
            value: moedaOrigem,
            onChanged: (newValue) {
              print(newValue);
              setState(() {
                moedaOrigem = newValue!;
              });
            },
            items: currencies.map((e) {
              return DropdownMenuItem<String>(
                value: e.currencySymbol,
                child: Text(e.currencyName),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
