import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  Widget menu() {
    return DropdownButton<String>(
        items: [
          DropdownMenuItem(
            child: Text('Home'),
            value: 'Home',
          ),
          DropdownMenuItem(
            child: Text('Home'),
            value: 'Home',
          ),
          DropdownMenuItem(
            child: Text('Home'),
            value: 'Home',
          ),
        ],
        onChanged: (value) {
          print(value);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 3,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset('assets/images/logo.png')),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: Text('Currency Converter'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  menu(),
                  menu(),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Amount',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Amount',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
    );
  }
}
