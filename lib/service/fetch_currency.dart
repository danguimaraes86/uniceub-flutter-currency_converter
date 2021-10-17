import 'dart:convert';
import 'package:currency_converter/models/converter_data.dart';
import 'package:http/http.dart' as http;

Future FetchCurrency() async {
  final response = await http.get(Uri.parse(
      'https://www.frankfurter.app/latest?amount=${converterData.valor}&from=${converterData.moedaOrigem}&to=${converterData.moedaDestino}'));
  Map<String, dynamic> parsedResults = jsonDecode(response.body);
  return parsedResults['rates'][converterData.moedaDestino].toString();
}
