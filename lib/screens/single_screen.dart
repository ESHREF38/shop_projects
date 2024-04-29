import 'package:coffee_shop_app_1/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatefulWidget {
  String img;
  int manys;
  SingleItemScreen(this.img, this.manys);

  @override
  State<SingleItemScreen> createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {
  int number = 1;
  int money = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: PaddingMargin().withOpacity,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                   
                    height: 300,
                    child: Center(
                      child: Image.asset(
                        "images/${widget.img}.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEST COFFEE",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.img,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        number = number - 1;
                                        money = money - widget.manys;
                                      });
                                      ;
                                    },
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: PaddingMargin().labelTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    number.toString(),
                                    style: TextStyle(
                                      color: PaddingMargin().labelTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ), /////
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        number = number + 1;
                                        money = money + widget.manys;
                                      });
                                      ;
                                    },
                                    ///////
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                      color: PaddingMargin().labelTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '$money\$',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: PaddingMargin().labelTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Coffee is a major source of antioxidants in the diet.It many health benefits",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Volume:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: PaddingMargin().labelTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "60 ml:",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: PaddingMargin().labelTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 54, 56),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: PaddingMargin().labelTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: PaddingMargin().labelColor,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: PaddingMargin().labelTextColor,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
