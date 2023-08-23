
import 'package:flutter/material.dart';
import 'camera_open.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Stack(

          alignment: Alignment.center,

          children: [
            Container(color: Colors.white24),
            Container(
              alignment: Alignment.topCenter,
              color: Colors.white,

              width: 350,
              height: 450,
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.black45,
                    width: 300,
                    height: 300,
                    child: GestureDetector(
                    ),
                  ),
                ],
              ),
            ),
            const Align(

              alignment: Alignment(-0.37, 0.30),
              child: Text(
                "Projeto RC \n#YJGW00",
                style: TextStyle(
                    color: Colors.black, inherit: false, fontSize: 25),
              ),
            ),
          ],
        ));
  }
}
