import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  //CurrencieModel list instancies
  List<CurrencyModel> currencies;

  //curreny to convert
  final TextEditingController toText;
  //base currency for conversion
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  //constructor
  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue;
    returnValue = 0;
    if (fromCurrency.name == 'brl') {
      returnValue = value * toCurrency.brl;
    } else if (fromCurrency.name == 'usd') {
      returnValue = value * toCurrency.usd;
    } else if (fromCurrency.name == 'eur') {
      returnValue = value * toCurrency.eur;
    } else if (fromCurrency.name == 'btc') {
      returnValue = value * toCurrency.btc;
    }
    fromText.text = returnValue.toStringAsFixed(5);
  }
}
