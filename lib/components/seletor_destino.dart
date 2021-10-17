import 'package:currency_converter/models/converter_data.dart';
import 'package:currency_converter/models/currency.dart';
import 'package:flutter/material.dart';

class SeletorDestino extends StatelessWidget {
  const SeletorDestino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Moeda de Destino',
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
  const DropdownCurrency({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DropdownCurrencyState();
  }
}

class DropdownCurrencyState extends State<DropdownCurrency> {
  String seletctedItem = 'hint';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Selecione uma moeda'),
      icon: const Icon(Icons.monetization_on),
      value: seletctedItem,
      onChanged: (newValue) {
        setState(() {
          converterData.moedaDestino = newValue!;
          seletctedItem = newValue;
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
