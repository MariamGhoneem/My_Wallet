import 'package:flutter/material.dart';

class Expenses extends StatelessWidget {
  final List options = [
    {
      'text': 'Food & Drinks',
      'icon': Icon(Icons.fastfood_rounded),
    },
    {
      'text': 'Clothing',
      'icon': Icon(Icons.add_shopping_cart_rounded),
    },
    {
      'text': 'Medical',
      'icon': Icon(Icons.healing_rounded),
    },
    {
      'text': 'TransPort',
      'icon': Icon(Icons.emoji_transportation_rounded),
    },
    {
      'text': 'Housing',
      'icon': Icon(Icons.home_rounded),
    },
    {
      'text': 'Bills',
      'icon': Icon(Icons.monetization_on_rounded),
    },
    {
      'text': 'Gym & Health',
      'icon': Icon(Icons.fitness_center_rounded),
    },
    {
      'text': 'Entertainment',
      'icon': Icon(Icons.sentiment_very_satisfied_rounded),
    },
    {
      'text': 'Education',
      'icon': Icon(Icons.menu_book_rounded),
    },
    {
      'text': 'Other',
      'icon': Icon(Icons.add_circle_outline_rounded),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff595b83),
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Expenses'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              onTap: () {},
              title: Text(options[index]['text']),
              leading: options[index]['icon'],
              //leading: Icon(options[index].values),
            ),
          );
        },
      ),
    );
  }
}
