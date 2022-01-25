import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyBox extends StatelessWidget {
  String selected = 'USD';
  List<String> currencies = ['USD', 'EUR', 'BRL', 'BTC'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        DropdownButton(
          value: selected,
          items: currencies.map((String e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: (value) {
            selected = value;
          },
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter Amount',
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        )),
      ]),
    );
  }
}
