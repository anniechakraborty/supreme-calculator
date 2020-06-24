import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycalculator/number_buttons.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                    right: 10.0,
                  ),
                  alignment: Alignment.centerRight,
                  child: Text(
                    expression,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10.0),
                  child: Text(
                    output,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: Color(0xFF191a19),
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
                        value: '+/-',
                        buttonStyle: kSpecialCharacterStyle,
                      ),
                      Numbers(
//                        onTap: () {},
                        value: '%',
                        buttonStyle: kSpecialCharacterStyle,
                      ),
                      Numbers(
//                        onTap: () {},
                        value: '/',
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
                        value: 'x',
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
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          '=',
                          style: kNumberButtonStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
