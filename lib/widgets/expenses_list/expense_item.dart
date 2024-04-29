import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            //Displaying multiple widgets
            child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //Items at the beggining of the screen
                children: [
                  Text(
                    expense.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(expense.amount.toStringAsFixed(
                          2)), //makes decimal nums to be 2 after the ,
                      const Spacer(),
                      Row(
                        children: [
                          Icon(categoryIcons[expense.category]),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(expense.formattedDate),
                        ],
                      )
                    ],
                  )
                ])));
  }
}
