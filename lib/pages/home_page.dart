import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/utils/my_button.dart';
import 'package:walletui/utils/my_card.dart';
import 'package:walletui/utils/my_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Pagecontroller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.pink[200],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 35,
                    color: Colors.pink[200],
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards ',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),

                  //Plus button
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add))
                ],
              ),
            ),
            SizedBox(height: 25),

            //Cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 52550.70,
                    cardNumber: '**** **** **** 1234',
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.redAccent[400],
                  ),
                  MyCard(
                    balance: 128.70,
                    cardNumber: '**** **** **** 7653',
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.black87,
                  ),
                  MyCard(
                    balance: 27.90,
                    cardNumber: '**** **** **** 6969',
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.orange,
                  ),
                  MyCard(
                    balance: 52550.70,
                    cardNumber: '**** **** **** 1256',
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.brown[400],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotHeight: 14,
                  dotWidth: 15,
                )),

            SizedBox(height: 40),

            //3 buttons send + receive + buy
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    iconPath: 'lib/icons/transfer.png',
                    buttonText: 'Send',
                  ),
                  //pay button
                  MyButton(
                    iconPath: 'lib/icons/pay.png',
                    buttonText: 'Pay',
                  ),
                  //bills button
                  MyButton(
                    iconPath: 'lib/icons/list.png',
                    buttonText: 'Bill',
                  )
                ],
              ),
            ),
            SizedBox(height: 40),

            //column of Sats and transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImangePath: 'lib/icons/analysis.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payment and Income',
                  ),
                  MyListTile(
                    iconImangePath: 'lib/icons/money-transfer.png',
                    tileTitle: 'Transactions',
                    tileSubTitle: 'Transaction History',
                  ),
                ],
              ),
            )
            //bottom navigation bar
          ],
        ),
      ),
    );
  }
}
