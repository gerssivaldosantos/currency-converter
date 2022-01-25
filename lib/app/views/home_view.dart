import 'package:currency_converter/app/widgets/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:
          // This is used to make the screen responsive when the keyboard
          // is opened or closed
          SingleChildScrollView(
        child: SizedBox(
          //define the height and width by screen size
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset('assets/images/logo.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text('Currency Converter'),
              ),
              CurrencyBox(),
              CurrencyBox(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Convert',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
