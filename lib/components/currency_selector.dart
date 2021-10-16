import 'package:currency_converter/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencySelector extends StatelessWidget {
  CurrencySelector({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          DropdownCurrency(),
        ],
      ),
    );
  }
}

class DropdownCurrency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropdownCurrencyState();
  }
}

class DropdownCurrencyState extends State<DropdownCurrency> {
  String moedaOrigem = 'hint';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
    );
  }
}
