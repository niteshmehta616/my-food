import 'package:flutter/material.dart';

import '../Components/food_list.dart';

class StoreDetailsFood extends StatelessWidget {
  const StoreDetailsFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 1,
          actions: [
            Center(
              child: Badge(
                backgroundColor: Colors.green,
                label: Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const FoodList();
            }));
  }
}
