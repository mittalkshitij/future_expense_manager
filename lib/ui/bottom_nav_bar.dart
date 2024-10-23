import 'package:flutter/material.dart';
import 'package:future_expense_manager/ui/add_new_expense.dart';
import 'package:future_expense_manager/ui/profile_page.dart';
import 'package:future_expense_manager/utils/extensions/buuild_context_extensions.dart';

import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<BottomNavigationBarItem> navItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: "Settings"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];
  final List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    ProfilePage(),
  ];
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          context.go(AddNewExpenseScreen());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: screens[bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black38,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: navItem,
        currentIndex: bottomNavIndex,
        onTap: (index) {
          bottomNavIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
