import 'package:aplikasi_alumni_organisasi/pages/home/home_page.dart';
import 'package:aplikasi_alumni_organisasi/pages/home/profile_page.dart';
import 'package:aplikasi_alumni_organisasi/pages/home/timeline_page.dart';
import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Widget Custom BottomNav
    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor2,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 14, bottom: 5),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 29,
                  color:
                      currentIndex == 0 ? Color(0xff236CF9) : Color(0xffBDBDBD),
                ),
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 14, bottom: 5),
                child: Image.asset(
                  'assets/icon_timeline.png',
                  width: 24,
                  color:
                      currentIndex == 1 ? Color(0xff00B0FF) : Color(0xffBDBDBD),
                ),
              ),
              label: 'Timeline',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 14, bottom: 5),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 24,
                  color:
                      currentIndex == 2 ? Color(0xff00B0FF) : Color(0xffBDBDBD),
                ),
              ),
              label: 'Profil',
            ),
          ],
        ),
      );
    }

    //Widget Body
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TimelinePage();
        case 2:
          return ProfilePage();
        default:
          return HomePage(); // Return a fallback widget or handle the default case accordingly
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
