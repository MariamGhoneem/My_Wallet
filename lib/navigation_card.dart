import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final String header;

  const NavigationCard({Key key, @required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 25, left: 20, right: 70, bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            header,
            style: TextStyle(
              color: Color(0xff333456),
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
