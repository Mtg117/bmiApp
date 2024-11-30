import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

String getStatus() {
  if (result < 18.5) {
    return 'Underweight';
  } else if (result < 24.9) {
    return 'Normalweight';
  } else if (result < 29.9) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}
Color getStatusColor() {
  if (result < 18.5) {
    return Colors.deepOrange;
  } else if (result < 24.9) {
    return Colors.lightGreen;
  } else if (result < 29.9) {
    return Colors.yellow;
  } else {
    return Colors.red;
  }
}

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a0c21),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0a0c21),
        title: Text(
          'bmi Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getStatus(),
                style: TextStyle(
                  color:getStatusColor(),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
                ),
                SizedBox(height: 6),
            Text(
              result.toStringAsFixed(2),
                style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
