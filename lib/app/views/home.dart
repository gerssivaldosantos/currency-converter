import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                    flex: 2,
                  ),
                  Center(
                    child: Container(
                      height: 280,
                      width: width * 0.8,
                      child: Card(
                        elevation: 10,
                        color: Colors.grey.withOpacity(0.55),
                        child: Column(
                          children: [
                            Text('line 1'),
                            Text('line 2'),
                            Text('line 3'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue.withOpacity(0.5))),
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
