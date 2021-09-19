import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:screen/cards.dart';
import 'package:screen/screens/temaki.dart';
import 'package:screen/widgets/tab_bar.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ontap() {}
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(double.infinity, 100), child: CustomAppbar()),
          body: TabBarView(children: [
            MyListView(),
            MyListView(),
            MyListView(),
            MyListView(),
          ]),
        ));
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) => Divider(
                    color: Colors.grey,
                  ),
              itemCount: 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Temaki();
              }),
        ),
      ],
    );
  }
}
