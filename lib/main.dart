import 'package:flutter/material.dart';
import 'package:screen/card.dart';
import 'package:screen/screens/home.dart';
import 'package:screen/screens/second.dart';
import 'package:screen/widgets/tab_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Second(),
      ),
    );
  }
}
