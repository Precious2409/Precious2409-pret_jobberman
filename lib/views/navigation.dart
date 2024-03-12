import 'package:flutter/material.dart';
import 'package:pret_jobberman/views/home.dart';
import 'package:pret_jobberman/views/message.dart';
import 'package:pret_jobberman/views/register.dart';
import 'package:pret_jobberman/views/welcome.dart';

class NavigationScope extends StatefulWidget {
  const NavigationScope({super.key});

  @override
  State<NavigationScope> createState() => _NavigationScopeState();
}

class _NavigationScopeState extends State<NavigationScope> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [HomePage(),MessageSection(),WelcomeScreen(),RegisterAccount()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
    );
  }
}
