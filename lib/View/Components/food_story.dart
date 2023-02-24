import 'package:flutter/material.dart';

class FoodStory extends StatelessWidget {
  FoodStory({Key? key, this.cname, this.simg}) : super(key: key);

  String? cname;
  String? simg;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50.0,
                backgroundImage: NetworkImage(simg!),
              ),
            ),
          ),
          Text(cname!)
        ],
      )
    ]);
  }
}
