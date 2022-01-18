import 'package:flutter/material.dart';

class SelectCurrency extends StatelessWidget {
  const SelectCurrency({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Object>(
      items: [],
      onChanged: (value) {},
    );
  }
}
