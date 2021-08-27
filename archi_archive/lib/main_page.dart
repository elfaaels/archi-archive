import 'package:archi_archive/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavBar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          //  unselectedItemColor: Colors.grey,
          //  selectedItemColor: secondaryColor,
          onTap: (value) {
            setState(() {
              print(value);
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/home-icon.png',
                  width: 21,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/chat-icon.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/fav-icon.png',
                  width: 18,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/profile-icon.png',
                  width: 18,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customBottomNavBar(),
      body: HomePage(),
    );
  }
}
