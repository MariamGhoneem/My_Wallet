import 'package:flutter/material.dart';

class AddExpenses extends StatelessWidget {
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
        title: Text('Add Expenses'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I've spent :",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600]
              ),
              // transfer the data by using onSubmitted: (){},
              autofocus: true,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
