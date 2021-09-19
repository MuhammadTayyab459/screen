// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../cards.dart';

class Temaki extends StatefulWidget {
  Temaki({Key? key}) : super(key: key);
  @override
  State<Temaki> createState() => _TemakiState();
}

class _TemakiState extends State<Temaki> {
  ontap() {
    Cards();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          DishName(
            text: "Temaki",
            tap: ontap,
          ),
          Seprator(),
          GestureDetector(
            child: DishName(
              text: "Gunkan Maki",
              // tap: ontap,
            ),
            onTap: () {
              Cards();
            },
          ),
          Seprator(),
          DishName(
            text: "Sashimi",
            // tap: ontap,
          ),
          Seprator(),
          DishName(
            text: "Gyoza",
            // tap: ontap,
          ),
          const Seprator(),
          DishName(
            text: "Pizza",
            // tap: ontap,
          ),
          Seprator(),
          DishName(
            text: "Fries",
            // tap: ontap,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right))
        ],
      ),
    ]);
  }
}

class Seprator extends StatelessWidget {
  const Seprator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: Colors.grey,
      thickness: 2,
      indent: 15,
      endIndent: 15,
    );
  }
}

class DishName extends StatelessWidget {
  const DishName({Key? key, this.tap, this.color, required this.text})
      : super(key: key);

  final Color? color;
  final String text;
  final VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        autofocus: true,
        onPressed: () {
          tap;
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.grey),
        ));
  }
}
