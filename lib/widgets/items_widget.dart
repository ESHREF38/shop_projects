import 'package:coffee_shop_app_1/screens/home_screen.dart';
import 'package:coffee_shop_app_1/screens/single_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Itemswidget extends StatelessWidget {
  List img = [
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  List manys = [
    30,
    30,
    30,
    30,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 211),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF212325),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) =>
                            SingleItemScreen(img[i], manys[i])),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${img[i]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Best Coffee",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        manys[i].toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PaddingMargin().labelColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: PaddingMargin().labelTextColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
