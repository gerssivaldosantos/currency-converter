import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final Function(CurrencyModel model) onChanged;
  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        DropdownButton(
          value: selectedItem,
          items: items
              .map(
                (e) => DropdownMenuItem(
                  child: Text(e.name),
                  value: e,
                ),
              ) //map
              .toList(),
          onChanged: onChanged,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Amount',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ]),
    );
  }
}
