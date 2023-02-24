
import 'package:flutter/material.dart';
import 'package:my_food/View/Components/counter.dart';

class FoodOrderList extends StatefulWidget {
  const FoodOrderList({Key? key}) : super(key: key);

  @override
  State<FoodOrderList> createState() => _FoodOrderListState();
}

class _FoodOrderListState extends State<FoodOrderList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 90,
                  // color: Colors.blueGrey,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEc4kPYYfTmwQkJpgJpWBnYqswrHQES8ZSRQ&usqp=CAU',
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.green.withAlpha(128),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(child: Text('15% Off')),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text('Margaraite Pizza',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        SizedBox(
                            height: 23,
                            width: 40,
                            child: Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [Text('Medium Size')],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QtyCounter(),
                        Text(
                          '₹ 130 for each',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
