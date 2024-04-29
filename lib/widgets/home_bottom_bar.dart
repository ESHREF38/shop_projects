import 'package:coffee_shop_app_1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(color: Color(0xFF212325), boxShadow: [
        BoxShadow(
          color: Colors.black54.withOpacity(0.4),
          blurRadius: 4,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.home,
              color: Color(0xFFE57734),
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
            child: Icon(
              Icons.output_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
