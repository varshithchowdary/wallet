import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String buttonText;

  const MyButton({
    super.key,
    required this.iconPath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(height: 4),
        //Text
        Text(buttonText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
