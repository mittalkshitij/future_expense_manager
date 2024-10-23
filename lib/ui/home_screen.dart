import 'package:flutter/material.dart';

import '../data/models/expenses.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  final List<Expenses> expenseData = [
    Expenses(
      username: "future07",
      date: "2024-10-01",
      expense: 100,
      notes: "Lunch with clients",
      typeOfExpense: "Food",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-05",
      expense: 50,
      notes: "Taxi fare to meeting",
      typeOfExpense: "Transport",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-10",
      expense: 200,
      notes: "Office supplies purchase",
      typeOfExpense: "Supplies",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-15",
      expense: 300,
      notes: "Team outing",
      typeOfExpense: "Entertainment",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-20",
      expense: 150,
      notes: "Client gift",
      typeOfExpense: "Gifts",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-05",
      expense: 50,
      notes: "Taxi fare to meeting",
      typeOfExpense: "Transport",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-10",
      expense: 200,
      notes: "Office supplies purchase",
      typeOfExpense: "Supplies",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-15",
      expense: 300,
      notes: "Team outing",
      typeOfExpense: "Entertainment",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-20",
      expense: 150,
      notes: "Client gift",
      typeOfExpense: "Gifts",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-05",
      expense: 50,
      notes: "Taxi fare to meeting",
      typeOfExpense: "Transport",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-10",
      expense: 200,
      notes: "Office supplies purchase",
      typeOfExpense: "Supplies",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-15",
      expense: 300,
      notes: "Team outing",
      typeOfExpense: "Entertainment",
    ),
    Expenses(
      username: "future07",
      date: "2024-10-20",
      expense: 150,
      notes: "Client gift",
      typeOfExpense: "Gifts",
    ),
  ];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Balance : +89349",
                            style: TextStyle(color: Colors.green),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Expense : -42152",
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
          SliverList.builder(
              itemCount: widget.expenseData.length,
              itemBuilder: (context, index) {
                return ExpensesCard(expense: widget.expenseData[index]);
              }),
        ],
      ),
    );
  }
}

class ExpensesCard extends StatelessWidget {
  final Expenses expense;

  ExpensesCard({required this.expense});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.typeOfExpense ?? "Expense",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  expense.notes ?? "No description",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "- ${expense.expense?.toString() ?? '0'}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  expense.date ?? "No date",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
