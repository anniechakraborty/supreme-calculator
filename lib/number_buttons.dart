import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
//  final Function onTap;
  final String value;
  final TextStyle buttonStyle;
  Numbers({@required this.value, this.buttonStyle});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          print(value);
        },
        child: Text(
          value,
          style: buttonStyle,
        ),
        shape: CircleBorder(),
      ),
    );
  }
}
