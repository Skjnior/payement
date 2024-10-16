import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payement/pages/chart_page.dart';
import 'package:payement/pages/credit_card.dart';
import 'package:payement/pages/home_page.dart';
import 'package:payement/pages/profile.dart';


class DashbordPage extends StatefulWidget {
  const DashbordPage({super.key});

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {

  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    CreditCardPage(),
    ChartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Color(0xFFffffff),

      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentIndex,

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },


        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFffffff),
            icon: Icon(
                Icons.home_filled,
              color: _currentIndex == 0 ? Color(0xFF0734b5) : Colors.grey[700],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.account_balance_wallet_rounded,
              color: _currentIndex == 1 ? Color(0xFF0734b5) : Colors.grey[700],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.insert_chart,
              color: _currentIndex == 2 ? Color(0xFF0734b5) : Colors.grey[700],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person,
              color: _currentIndex == 3 ? Color(0xFF0734b5) : Colors.grey[700],
            ),
            label: '',
          ),
        ],

          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF0734b5),
          iconSize: 30,
          elevation: 5
      ),
    );
  }
}
