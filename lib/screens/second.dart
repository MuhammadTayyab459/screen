import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen/constants.dart';
import 'package:screen/widgets/buttons.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool alue = false;
  bool malue = false;
  bool galue = false;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://s3-alpha-sig.figma.com/img/b84f/7420/2d9038975c2249746f448c158df2a545?Expires=1632700800&Signature=DWK9rECLGD15sPPPo9F-0zuSY07Hmh-bjdPZbsqkMD4PGv5grl86~B1U7PfrKri6JNAQjG5wCXr05cY1SQAb6ESqSO-ueFyUa44WjHZYytui730cvYLBW-tgpIrtpbFB5td1uUING7RB8kfF-H8MQCX4ha6xHsRec2PwJ-drYgLN6q8NCzYNugrNN8HN7JlfRu4u14g7ABdmsA9zPfCr5rhyfFmXIGHNiLaaCdTTqz5XM6BalSwfsuMd1cGu5JkWBy-gpHSR6t8H801VKm79oeSkbp8CggRlt9VL5q0JrCk6ybEnxoxeU5avtMMAC-y-pENh2hh8pDpwZuafEjjr1Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
            Card(
              color: Color(0xff1E2022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Title(),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, top: 10.h, right: 0),
                    child: Row(
                      children: [
                        Text(
                          'Choose Your Items',
                          style: kStyleItems,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff34C759),
                          size: 35,
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Text("Cost", style: kCost)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                side: BorderSide(color: Colors.green, width: 2),
                                activeColor: Colors.green,
                                value: alue,
                                onChanged: (value) {
                                  setState(() {
                                    alue = value!;
                                  });
                                },
                              ),
                              DishName(
                                text: "Chicken Gyoza",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: " £06.25",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: "Unit Price:£06.25",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                side: BorderSide(color: Colors.green, width: 2),
                                activeColor: Colors.green,
                                value: malue,
                                onChanged: (value) {
                                  setState(() {
                                    malue = value!;
                                  });
                                },
                              ),
                              DishName(
                                text: "Chicken Gyoza",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: " £06.25",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: "Unit Price:£06.25",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                side: BorderSide(color: Colors.green, width: 2),
                                activeColor: Colors.green,
                                value: galue,
                                onChanged: (value) {
                                  setState(() {
                                    galue = value!;
                                  });
                                },
                              ),
                              DishName(
                                text: "Chicken Gyoza",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: " £06.25",
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              DishName(
                                text: "Unit Price:£06.25",
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              width: 200.w,
                            ),
                            Divider(
                              color: Colors.grey,
                            )
                          ]),
                          Row(children: [
                            SizedBox(
                              width: 200.w,
                            ),
                            DishName(
                              text: "Total Price:£13.00",
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: 35.h,
                          width: 220.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                  child: Text(
                                "Select Quantity",
                                style: TextStyle(fontSize: 10.sp),
                              )),
                              Container(
                                height: 25.h,
                                width: 97.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff5D55B4),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RoundIconButton(
                                        icon: Icons.remove,
                                        color: Color(0xffFF4251),
                                        func: () {
                                          setState(() {
                                            if (number > 0) number--;
                                          });
                                        }),
                                    Text(
                                      '$number',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    RoundIconButton(
                                      color: Color(0xff30F361),
                                      icon: Icons.add,
                                      func: () {
                                        setState(() {
                                          number++;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.h,
                          width: 220.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                  child: Text(
                                "Select Spicy",
                                style: TextStyle(fontSize: 10.sp),
                              )),
                              Container(
                                padding: EdgeInsets.all(0),
                                height: 25.h,
                                width: 97.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff5D55B4),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  children: [
                                    RoundIconButton(
                                        icon: Icons.remove,
                                        color: Color(0xffFF4251),
                                        func: () {
                                          setState(() {
                                            if (number > 0) number--;
                                          });
                                        }),
                                    Text(
                                      'Default',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 5.sp),
                                    ),
                                    RoundIconButton(
                                      color: Color(0xff30F361),
                                      icon: Icons.add,
                                      func: () {
                                        setState(() {
                                          number++;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff979797),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Please Touch to Add Extra Intructions",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white)),
                        maxLines: 5,
                        cursorColor: Colors.white,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        color: Color(0xffFF4251),
                        text: "Cancel",
                      ),
                      Buttons(
                        color: Color(0xff34C759),
                        text: "Add to Basket",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'GYOZA',
        style: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        '(5 pieces) Steamed dumpling with homemade Gyoza sauce.',
        style: TextStyle(color: Color(0xff979797)),
      ),
    );
  }
}

class DishName extends StatelessWidget {
  const DishName({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 14.sp,
          color: Color(0xff979797),
          fontWeight: FontWeight.w500),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback func;
  RoundIconButton(
      {required this.icon, required this.func, required this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: color,
        size: 15,
      ),
      shape: CircleBorder(),
      // fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 30.w,
        height: 20.h,
      ),
      elevation: 0.0,
      onPressed: func,
    );
  }
}
