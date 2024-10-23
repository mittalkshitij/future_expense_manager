import 'package:flutter/material.dart';
import 'package:future_expense_manager/ui/bottom_nav_bar.dart';
import 'package:future_expense_manager/ui/home_screen.dart';
import 'package:future_expense_manager/ui/login_screen.dart';

void main() {
  runApp(const ExpenseManager());
}

class ExpenseManager extends StatefulWidget {
  const ExpenseManager({super.key});

  @override
  State<ExpenseManager> createState() => _ExpenseManagerState();
}

class _ExpenseManagerState extends State<ExpenseManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
