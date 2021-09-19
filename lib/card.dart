import 'package:flutter/material.dart';
import 'package:screen/widgets/buttons.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                  child: Image(
                image: AssetImage("asset/image.jpg"),
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Salmon and avacado Hand rool Temaki',
                style: TextStyle(),
              ),
              const SizedBox(
                height: 30,
              ),
              Buttons(
                text: "Add to Basket",
                color: Colors.green,
              ),
              Buttons(text: "      Details      ", color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
