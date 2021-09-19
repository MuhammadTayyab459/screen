import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:screen/card.dart';
import 'package:screen/widgets/tab_bar.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 100), child: CustomAppbar()),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  child: ListView.separated(
                      itemCount: 1,
                      separatorBuilder: (BuildContext context, int index) =>
                          const VerticalDivider(
                            indent: 20,
                            endIndent: 0,
                            color: Colors.grey,
                            thickness: 10,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            GroupButton(
                              buttons: const [
                                'Tmaki',
                                'Gunkan Maki',
                                'Sashimi',
                                'Gyoza',
                                'Fries',
                                'Fries'
                              ],
                              onSelected: (index, isSelected) => () {},
                              selectedTextStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xffFBAD2D),
                              ),
                              unselectedTextStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                              selectedColor: Colors.transparent,
                              unselectedColor: Colors.transparent,
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                  children: [Card()],
                )
              ],
            ),
            Row(
              children: [TextButton(onPressed: () {}, child: Text("Temaki"))],
            ),
            Row(
              children: [TextButton(onPressed: () {}, child: Text("Temaki"))],
            ),
            Row(
              children: [TextButton(onPressed: () {}, child: Text("Temaki"))],
            ),
          ],
        ),
      ),
    );
  }
}

class DishName extends StatelessWidget {
  const DishName(
      {Key? key, required this.tap, required this.color, required this.text})
      : super(key: key);

  final Color color;
  final String text;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        autofocus: true,
        onPressed: () {
          tap;
        },
        child: Text(
          text,
          style: TextStyle(color: color),
        ));
  }
}
