import 'package:archi_archive/detail_page.dart';
import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Container(
        width: 239,
        height: 278,
        margin: EdgeInsets.only(
          right: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/house-2.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'American Classic',
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //   ),
                  // ),
                  // SizedBox(height: 6),
                  // Text(
                  //   'Highway District 201',
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  //   overflow: TextOverflow.ellipsis,
                  //   maxLines: 1,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
