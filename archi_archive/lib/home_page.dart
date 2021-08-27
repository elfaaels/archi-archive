import 'package:archi_archive/house_card.dart';
import 'package:archi_archive/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          bottom: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/menu-icon.png',
              width: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/location-icon.png',
                  width: 20,
                ),
                SizedBox(width: 5),
                Text(
                  'California, US',
                ),
              ],
            ),
            Image.asset(
              'assets/notif-icon.png',
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget houseProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 30),
              Row(
                children: [
                  HouseCard(),
                  HouseCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          houseProducts(),
        ],
      ),
    );
  }
}
