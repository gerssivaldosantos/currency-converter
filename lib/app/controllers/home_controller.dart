import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  //CurrencieModel list instancies
  List<CurrencyModel> currencies;

  //curreny to convert
  final TextEditingController toText;
  //base currency for conversion
  final TextEditingController fromText;

  //constructor
  HomeController(this.toText, this.fromText) {
    currencies = <CurrencyModel>[];
  }
}
