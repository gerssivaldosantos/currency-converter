import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/widgets/select_currency.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  Home() {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double currency1;

  input(double width, String label) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) => currency1 = double.parse(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/home_background.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.black.withOpacity(0.93),
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Center(
                    child: Container(
                      height: 280,
                      width: width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectCurrency(),
                              SizedBox(
                                width: 20,
                              ),
                              input(width * 0.5, "Currency 1"),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectCurrency(),
                              SizedBox(
                                width: 20,
                              ),
                              input(width * 0.5, "Currency 2"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint(currency1.toString());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('Convert', style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
