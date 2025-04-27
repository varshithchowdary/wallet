import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                  Image.asset(
                    'lib/icons/visa.png',
                    height: 40,
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                '\$$balance',
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardNumber,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '$expiryMonth/$expiryYear',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
