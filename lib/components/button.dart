import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(86, 86, 86, 4);
  static const DEFAULT = Color.fromRGBO(116, 116, 116, 4);
  static const OPERATION = Color.fromRGBO(254, 162, 17, 4);

  final String text;
  final bool doubleButton;
  final Color color;

  final void Function(String) cb;

  Button({
    @required this.text,
    this.doubleButton = false,
    this.color = DEFAULT,
    @required this.cb,
  });

  Button.doubleButton({
    @required this.text,
    this.doubleButton = true,
    this.color = DEFAULT,
    @required this.cb,
  });

  Button.opration({
    @required this.text,
    this.doubleButton = false,
    this.color = OPERATION,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doubleButton ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.w200,
            )),
        onPressed: () => cb(text),
      ),
    );
  }
}
