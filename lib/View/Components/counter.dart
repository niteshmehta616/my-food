import 'package:flutter/material.dart';

class QtyCounter extends StatefulWidget {
  const QtyCounter({Key? key}) : super(key: key);

  @override
  State<QtyCounter> createState() => _QtyCounterState();
}

class _QtyCounterState extends State<QtyCounter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _count++;
              });
            },
            child: Container(
              height: 25,
              width: 25,
              color: Colors.teal,
              child:
                  const Icon(Icons.exposure_plus_1_sharp, color: Colors.white),
            ),
          ),
          SizedBox(
              width: 50,
              child: Center(
                  child:
                      Text('$_count', style: const TextStyle(fontSize: 20)))),
          InkWell(
            onTap: () {
              if (_count == 0) {

              } else {
                setState(() {
                  _count--;
                });
              }
            },
            child: Container(
              height: 25,
              width: 25,
              color: Colors.teal,
              child: const Icon(Icons.exposure_minus_1, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
