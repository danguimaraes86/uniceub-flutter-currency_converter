import 'package:currency_converter/models/converter_data.dart';
import 'package:currency_converter/service/fetch_currency.dart';
import 'package:flutter/material.dart';

class ValueConverter extends StatefulWidget {
  @override
  State<ValueConverter> createState() => _ValueConverterState();
}

class _ValueConverterState extends State<ValueConverter> {
  bool showResultCard = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputValueConverter(),
        ResultValueConverter(showResultCard),
        ElevatedButton(
          onPressed: () async {
            converterData.resultado = await FetchCurrency();
            if (converterData.resultado.isNotEmpty) {
              setState(() {
                showResultCard = true;
              });
            }
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
            if (valor.isNotEmpty) {
              converterData.valor = double.parse(valor);
            } else {
              converterData.valor = 0;
            }
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
  bool showResult;
  ResultValueConverter(this.showResult);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on_outlined),
          title: Text(showResult
              ? 'O valor corresponde a ${converterData.resultado}'
              : 'Aguardando valores para conversão'),
        ),
      ),
    );
  }
}
