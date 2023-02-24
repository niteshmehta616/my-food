import 'package:flutter/material.dart';
import 'package:my_food/View/Components/food_list.dart';

import '../Components/foodorderlist.dart';
import 'payment_screen.dart';

class orderReview extends StatefulWidget {
  const orderReview({Key? key}) : super(key: key);

  @override
  State<orderReview> createState() => _orderReviewState();
}

class _orderReviewState extends State<orderReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Items (10)', style: TextStyle(fontSize: 18)),
                Text('Qty (20)', style: TextStyle(fontSize: 18))
              ],
            ),
          ),
          // =================================================================

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: double.infinity,
                height: 460,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return FoodOrderList();
                    })),
          ),

          // =================================================================

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    color: Colors.orange,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('Totel : 200'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Discount : 20'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Delivery charges : 40'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Coupen Discount : 10'),
                              ],
                            ),
                            SizedBox(
                              child: Divider(
                                // height: 10,
                                thickness: 5,
                                color: Colors.black,
                                // thickness: 3,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: FloatingActionButton(
              //       backgroundColor: Colors.green, child: Icon(Icons.chevron_right, color: Colors.black), onPressed: () {}),
              // ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                },
                child: Row(
                  children: [
                    Text('Pay Now'),
                    Icon(Icons.chevron_right, color: Colors.black),
                  ],
                ),
                style: ButtonStyle(
                    // overlayColor:Colors.green,
                    // foregroundColor: Colors.green,
                    // backgroundColor: Colors.green
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
