import 'package:flutter/material.dart';

class SelectCurrency extends StatelessWidget {
  const SelectCurrency({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Object>(
      items: [
        DropdownMenuItem(
          value: 'USD',
          child: Text('USD'),
        ),
        DropdownMenuItem(
          value: 'EUR',
          child: Text('EUR'),
        ),
        DropdownMenuItem(
          value: 'BTC',
          child: Text('BTC'),
        ),
        DropdownMenuItem(
          value: 'BRL',
          child: Text('BRL'),
        ),
      ],
      onChanged: (value) {},
    );
  }
}
