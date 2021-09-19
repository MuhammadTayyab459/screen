import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(color)));
  }
}
