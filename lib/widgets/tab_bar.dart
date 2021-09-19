import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff5D55B4),
      bottom: TabBar(
        unselectedLabelColor: Colors.white,
        isScrollable: true,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.zero, color: Color(0xffFBAD2D)),
        tabs: [
          Tab(
            child: Row(
              children: [Icon(Icons.fastfood), Text("Fastfood Menu")],
            ),
            // icon: Icon(Icons.fastfood),
            // text: ("FastFood Menu"),
          ),
          Tab(
            child: Row(
              children: [Icon(Icons.local_dining), Text("Dining Menu")],
              // icon: Icon(Icons.fastfood),
              // text: ("FastFood Menu"),
            ),
          ),
          Tab(
            child: Row(
              children: [Icon(Icons.icecream), Text("Dessert Menu")],
              // icon: Icon(Icons.fastfood),
              // text: ("FastFood Menu"),
            ),
          ),
          Tab(
            child: Row(
              children: [Icon(Icons.no_drinks), Text("Drinks Menu")],
            ),
            // icon: Icon(Icons.fastfood),
            // text: ("FastFood Menu"),
          ),
        ],
      ),
    );
  }
}
