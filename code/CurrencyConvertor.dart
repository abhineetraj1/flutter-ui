import 'package:flutter/material.dart';

void main() {
  runApp(CurrencyConverterApp());
}

class CurrencyConverterApp extends StatefulWidget {
  @override
  _CurrencyConverterAppState createState() => _CurrencyConverterAppState();
}

class _CurrencyConverterAppState extends State<CurrencyConverterApp> {
  double amount = 0.0;
  String selectedCurrency = 'USD';
  double convertedAmount = 0.0;

  final Map<String, double> conversionRates = {
    'USD': 1.0,
    'INR': 73.0,
    'Yen': 110.0,
    'RUBLE': 70.0,
    'AED': 3.67,
  };

  void convertCurrency(String targetCurrency) {
    setState(() {
      convertedAmount = amount /
          conversionRates[selectedCurrency]! *
          conversionRates[targetCurrency]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Converter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              onChanged: (value) {
                setState(() {
                  amount = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: selectedCurrency,
              items: <String>['USD', 'INR', 'Yen', 'RUBLE', 'AED']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value!;
                  convertedAmount = 0.0;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                convertCurrency(selectedCurrency);
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Converted Amount: $convertedAmount',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
