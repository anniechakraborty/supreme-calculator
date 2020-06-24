import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'constants.dart';

String output = "";
String equation = "";
String expression = "";

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  buttonPressed(String text) {
    setState(() {
      if (text == 'C') {
        equation = '';
        output = '';
        expression = '';
      } else if (text == '⌫') {
        if (output == '') {
          equation = '';
          output = '';
          expression = '';
        } else {
          equation = equation.substring(0, equation.length - 1);
          expression = '';
          output = '';
        }
      } else if (text == "=") {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
      } else {
        if (equation == "0") {
          equation = text;
        } else {
          equation = equation + text;
        }
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          output = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          output = "Error";
        }
      }
    });
  }

  Widget roundKeypadButtons({String value, TextStyle buttonStyle}) {
    return Expanded(
      child: FlatButton(
        onPressed: buttonPressed(value),
        child: Text(
          value,
          style: buttonStyle,
        ),
      ),
    );
  }

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
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        equation,
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
                        roundKeypadButtons(
                          value: 'C',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '^',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '%',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '÷',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '7',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '8',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '9',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '×',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '4',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '5',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '6',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '-',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '1',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '2',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '3',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '+',
                          buttonStyle: kCharacterStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '.',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '0',
                          buttonStyle: kNumberButtonStyle,
                        ),
                        roundKeypadButtons(
//                        onTap: () {},
                          value: '00',
                          buttonStyle: kSpecialCharacterStyle,
                        ),
                        roundKeypadButtons(
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
