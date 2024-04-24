import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Versestars App',
      amount: 20000,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Music',
      amount: 10000,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Versestar chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
