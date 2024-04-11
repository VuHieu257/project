import 'package:academy_app/screen/ui/home_page.dart';
import 'package:academy_app/screen/ui/my_account_page.dart';
import 'package:academy_app/screen/ui/schedule.dart';
import 'package:academy_app/screen/ui/student_page.dart';
import 'package:flutter/material.dart';


class BottomNavigationCn extends StatefulWidget {
  const BottomNavigationCn({super.key});

  @override
  State<BottomNavigationCn> createState() => _BottomNavigationCnState();
}

class _BottomNavigationCnState extends State<BottomNavigationCn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomNavigationBarmain(),
    );
  }
}
class BottomNavigationBarmain extends StatefulWidget {
  const BottomNavigationBarmain({super.key});

  @override
  State<BottomNavigationBarmain> createState() =>
      _BottomNavigationBarmainState();
}

class _BottomNavigationBarmainState
    extends State<BottomNavigationBarmain> {
    int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SchedulePage(),
    StudentPage(),
    MyAccountPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        // unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex==0?const Icon(Icons.star):const Icon(Icons.star_outline),
            label: "Nổi bật",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==1?const Icon(Icons.event_note):const Icon(Icons.event_note_outlined),
            label: 'Lịch khai giảng',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==2?const Icon(Icons.play_circle):const Icon(Icons.play_circle_outline),
            label: 'Học tập',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==3?const Icon(Icons.account_circle):const Icon(Icons.account_circle_outlined),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),


    );
  }
}
