import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Should do convert from brl to usd', () {
    toText.text = '2.0';
    homeController.toCurrency = homeController.currencies[0];
    homeController.fromCurrency = homeController.currencies[1];
    homeController.convert();
    expect(fromText.text, '0.36000');
  });

  test('Should do convert usd to eur', () {
    toText.text = '1.0';
    homeController.toCurrency = homeController.currencies[1];
    homeController.fromCurrency = homeController.currencies[2];
    homeController.convert();
    expect(fromText.text, '0.85000');
  });

  test('Should do convert eur to btc', () {
    toText.text = '1.0';
    homeController.toCurrency = homeController.currencies[2];
    homeController.fromCurrency = homeController.currencies[3];
    homeController.convert();
    expect(fromText.text, '0.00010');
  });
}
