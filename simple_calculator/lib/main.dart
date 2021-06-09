import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Simple Calculator")),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  String outputValue = "9 + 6";
  String resultValue = "15";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // output text
        Expanded(
          child: Container(
            //height: 90,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10),
            child: Text(
              outputValue,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        // result text
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            //height: 70,
            padding: EdgeInsets.only(right: 10, bottom: 14),
            child: Text(
              resultValue,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        // calculator pad
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height / 0.75,
            width: MediaQuery.of(context).size.width,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
