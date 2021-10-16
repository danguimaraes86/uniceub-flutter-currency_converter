class Currency {
  String currencySymbol;
  String currencyName;

  Currency({
    required this.currencySymbol,
    required this.currencyName,
  });
}

List<Currency> currencies = [
  Currency(currencySymbol: 'hint', currencyName: 'Selecione a moeda'),
  Currency(currencySymbol: 'AUD', currencyName: 'Australian Dollar'),
  Currency(currencySymbol: 'BGN', currencyName: 'Bulgarian Lev'),
  Currency(currencySymbol: 'BRL', currencyName: 'Brazilian Real'),
  Currency(currencySymbol: 'CAD', currencyName: 'Canadian Dollar'),
  Currency(currencySymbol: 'CHF', currencyName: 'Swiss Franc'),
  Currency(currencySymbol: 'CNY', currencyName: 'Chinese Renminbi Yuan'),
  Currency(currencySymbol: 'CZK', currencyName: 'Czech Koruna'),
  Currency(currencySymbol: 'DKK', currencyName: 'Danish Krone'),
  Currency(currencySymbol: 'EUR', currencyName: 'Euro'),
  Currency(currencySymbol: 'GBP', currencyName: 'British Pound'),
  Currency(currencySymbol: 'HKD', currencyName: 'Hong Kong Dollar'),
  Currency(currencySymbol: 'HRK', currencyName: 'Croatian Kuna'),
  Currency(currencySymbol: 'HUF', currencyName: 'Hungarian Forint'),
  Currency(currencySymbol: 'IDR', currencyName: 'Indonesian Rupiah'),
  Currency(currencySymbol: 'ILS', currencyName: 'Israeli New Sheqel'),
  Currency(currencySymbol: 'INR', currencyName: 'Indian Rupee'),
  Currency(currencySymbol: 'ISK', currencyName: 'Icelandic Króna'),
  Currency(currencySymbol: 'JPY', currencyName: 'Japanese Yen'),
  Currency(currencySymbol: 'KRW', currencyName: 'South Korean Won'),
  Currency(currencySymbol: 'MXN', currencyName: 'Mexican Peso'),
  Currency(currencySymbol: 'MYR', currencyName: 'Malaysian Ringgit'),
  Currency(currencySymbol: 'NOK', currencyName: 'Norwegian Krone'),
  Currency(currencySymbol: 'NZD', currencyName: 'New Zealand Dollar'),
  Currency(currencySymbol: 'PHP', currencyName: 'Philippine Peso'),
  Currency(currencySymbol: 'PLN', currencyName: 'Polish Złoty'),
  Currency(currencySymbol: 'RON', currencyName: 'Romanian Leu'),
  Currency(currencySymbol: 'RUB', currencyName: 'Russian Ruble'),
  Currency(currencySymbol: 'SEK', currencyName: 'Swedish Krona'),
  Currency(currencySymbol: 'SGD', currencyName: 'Singapore Dollar'),
  Currency(currencySymbol: 'THB', currencyName: 'Thai Baht'),
  Currency(currencySymbol: 'TRY', currencyName: 'Turkish Lira'),
  Currency(currencySymbol: 'USD', currencyName: 'United States Dollar'),
  Currency(currencySymbol: 'ZAR', currencyName: 'South African Rand'),
];
