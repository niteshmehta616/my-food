import 'package:flutter/material.dart';
import 'package:my_food/View/Screens/loginscreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAIxJBdeTKEyCmLFHds9OX2tkhSqr8FSfA2vrcHcaqJ6J0HQx_pONH-i_Crq5QmmHyypM&usqp=CAU'),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                height: 150,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Name: Nitesh Mehta',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email : niteshmehta616@gmail.com',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mobile:+91-9887850293',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(child: Center(child: Text('Order History'))),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(child: Center(child: Text('Address Book'))),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(child: Center(child: Text('Coupens'))),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(child: Center(child: Text('Order History'))),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogIn()));
            },
            child: Container(
              color: Colors.deepOrange,
              width: 300,
              height: 50,
              child: Card(child: Center(child: Text('Log Out'))),
            ),
          )
        ],
      ),
    );
  }
}
