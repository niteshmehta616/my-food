import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  FoodCategory({Key? key, this.img, this.name, this.price, this.off, this.rate})
      : super(key: key);

  String? img;
  String? name;
  String? price;
  String? off;
  String? rate;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: () {},
        child: Container(
          height: 190,
          width: 180,
          child: Card(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 110,
                      child: Image.network(img!, fit: BoxFit.fill),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 23,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 18),
                            Text(
                              rate!,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        child: Text(name!,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.green.withAlpha(128),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text('$off%Off')),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text('Quick Delivery', style: TextStyle(color: Colors.red)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹ $price start',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
