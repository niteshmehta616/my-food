import 'package:flutter/material.dart';

import '../Screens/orderreview.dart';
import 'counter.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Scaffold.of(context).showBottomSheet((context) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  // color: Colors.orange,
                                  height: 190,
                                  child: Card(
                                    child: Image.network(
                                        'https://t4.ftcdn.net/jpg/00/88/20/67/240_F_88206782_jWghuabNP4lgusju0T0KaFNKSblgPuIz.jpg',
                                        fit: BoxFit.fitWidth),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Margariet Pizza',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
                                  maxLines: 2,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Text('Large Pizza',
                                        style: TextStyle(fontSize: 20))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                QtyCounter(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Text('Medium Pizza',
                                        style: TextStyle(fontSize: 20))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                QtyCounter(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Text('Small Pizza',
                                        style: TextStyle(fontSize: 20))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                QtyCounter(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text('Coc 500 ML',
                                        style: TextStyle(fontSize: 20))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                QtyCounter(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => orderReview()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.teal,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Add+',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                );
              });
            },
            child: SizedBox(
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
                              children: [
                                const Text('Veg.. Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                                Container(
                                  height: 23,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.green,
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.star,
                                          color: Colors.white, size: 18),
                                      Text(
                                        '3.8',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text('Here is Informational Content..')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Quick Delivery',
                                    style: TextStyle(color: Colors.red)),
                                Text('₹ 130 for each')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
