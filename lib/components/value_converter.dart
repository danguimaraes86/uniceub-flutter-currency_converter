import 'package:currency_converter/models/converter_data.dart';
import 'package:currency_converter/service/fetch_currency.dart';
import 'package:flutter/material.dart';

class ValueConverter extends StatefulWidget {
  const ValueConverter({Key? key}) : super(key: key);

  @override
  State<ValueConverter> createState() => _ValueConverterState();
}

class _ValueConverterState extends State<ValueConverter> {
  bool showResultCard = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InputValueConverter(),
        ResultValueConverter(showResultCard),
        ElevatedButton(
          onPressed: () async {
            converterData.resultado = await fetchCurrency();
            if (converterData.resultado.isNotEmpty) {
              setState(() {
                showResultCard = true;
              });
            }
          },
          child: const Text('Converter'),
        ),
      ],
    );
  }
}

class InputValueConverter extends StatefulWidget {
  const InputValueConverter({Key? key}) : super(key: key);

  @override
  State<InputValueConverter> createState() => InputValueConverterState();
}

class InputValueConverterState extends State<InputValueConverter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
        decoration: const InputDecoration(
          label: Text('Valor'),
          hintText: 'Digite o valor para conversão. Ex. 20.5',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ResultValueConverter extends StatelessWidget {
  final bool showResult;
  const ResultValueConverter(this.showResult, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.monetization_on_outlined),
          title: Text(showResult
              ? 'O valor corresponde a ${converterData.resultado}'
              : 'Aguardando valores para conversão'),
        ),
      ),
    );
  }
}
