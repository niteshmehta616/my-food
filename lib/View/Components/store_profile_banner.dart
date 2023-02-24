import 'package:flutter/material.dart';

import '../Screens/storedetailsscreen.dart';

class StoreProfileBanner extends StatefulWidget {
  String? name;
  dynamic rate;
  String? img;
  dynamic off;
  String? desc;

  StoreProfileBanner(
      {Key? key, this.name, this.img, this.rate, this.off, this.desc})
      : super(key: key);

  @override
  State<StoreProfileBanner> createState() => _StoreProfileBannerState();
}

class _StoreProfileBannerState extends State<StoreProfileBanner> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoreDetailsFood()),
            );
          },
          child: SizedBox(
            height: 280,
            child: Card(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: Image.network(widget.img!, fit: BoxFit.fill),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 20,
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: Center(
                            child: Text(
                          widget.off,
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.name!, style: TextStyle(fontSize: 18)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 23,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.white, size: 18),
                                Text(
                                  widget.rate,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [Text(widget.desc!, maxLines: 2)],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
