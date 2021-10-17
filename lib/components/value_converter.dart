import 'package:currency_converter/models/converter_data.dart';
import 'package:flutter/material.dart';

class ValueConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputValueConverter(),
        ResultValueConverter(),
        ElevatedButton(
          onPressed: () {
            print(converterData.valor);
            print(converterData.moedaOrigem);
            print(converterData.moedaDestino);
          },
          child: Text('Converter'),
        ),
      ],
    );
  }
}

class InputValueConverter extends StatefulWidget {
  @override
  State<InputValueConverter> createState() => InputValueConverterState();
}

class InputValueConverterState extends State<InputValueConverter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        onChanged: (valor) {
          setState(() {
            converterData.valor = double.tryParse(valor)!;
          });
        },
        decoration: InputDecoration(
          label: Text('Valor'),
          hintText: 'Digite o valor para conversão. Ex. 20.5',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ResultValueConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on_outlined),
          title: Text('O valor corresponde a 1000'),
        ),
      ),
    );
  }
}
