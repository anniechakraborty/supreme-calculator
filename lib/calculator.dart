import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycalculator/number_buttons.dart';

import 'bottomWaveClipper.dart';
import 'constants.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  String expression = "23 + 40";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: BottomWaveClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          expression,
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: Text(
                          output,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF191a19),
                padding: EdgeInsets.only(
                  bottom: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Numbers(
                          value: 'C',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '^',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '%',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '÷',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Numbers(
//                        onTap: () {},
                          value: '7',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '8',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '9',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '×',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Numbers(
//                        onTap: () {},
                          value: '4',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '5',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '6',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '-',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Numbers(
//                        onTap: () {},
                          value: '1',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '2',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '3',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '+',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Numbers(
//                        onTap: () {},
                          value: '.',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '0',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        Numbers(
//                        onTap: () {},
                          value: '00',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        Numbers(
                          value: '=',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
