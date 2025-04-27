import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImangePath;
  final String tileTitle;
  final String tileSubTitle;

  const MyListTile({
    Key? key,
    required this.iconImangePath,
    required this.tileTitle,
    required this.tileSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImangePath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tileTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10),
                  Text(tileSubTitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[500],
                      )),
                ],
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
