import 'package:currency_converter/app/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Andows Currency Converter',
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
