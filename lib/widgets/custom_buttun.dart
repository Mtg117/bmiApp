import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String text;
  final double height;
  final Function() onPressed;
  const customButton({
    super.key, 
    required this.text,
    this.height=50, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFeb1555),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
