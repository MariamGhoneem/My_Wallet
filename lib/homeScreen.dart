import 'package:flutter/material.dart';
import 'package:my_wallet/expenses.dart';
import 'navigation_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff595b83),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36)),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 60),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Expenses(),
                                ),
                              );
                            },
                            child: NavigationCard(
                              header: 'Expenses',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          NavigationCard(
                            header: 'Budget',
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          NavigationCard(
                            header: 'Savings',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            //the avatar
            top: screenHeight * (3 / 8) - 120 / 2,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 90,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                  backgroundColor: Colors.white,
                  radius: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
