import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'home_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                      height: 150,
                      width: 150,
                      // color: Colors.deepOrange,
                      child: Image.network(
                          'https://icon-library.com/images/food-app-icon/food-app-icon-12.jpg')),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text('Log In Here..',
                      style: TextStyle(fontSize: 35, color: Colors.white)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 60,
                    width: 300,
                    child: TextFormField(
                      controller: emailcontroler,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        iconColor: Colors.white,
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email',
                        hintText: 'Email',
                        // icon: Icon(Icons.password),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 60,
                width: 300,
                child: TextFormField(
                  controller: passwordcontroler,
                  cursorColor: Colors.black,
                  // maxLength: 10,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    iconColor: Colors.white,
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    hintText: 'Passeord',
                    // icon: Icon(Icons.password),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10, right: 40),
                    child: InkWell(
                      onTap: () {
                        login(context, emailcontroler.text.toString(),
                            passwordcontroler.text.toString());
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward_rounded),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void login(BuildContext context, String email, String password) {
    if (email == 'niteshmehta616@gmail.com' && password == '123') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      print('Failled Login');
      setState(() {
        Fluttertoast.showToast(
            msg: "Kindly Enter Valid email & Password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      });
    }
  }
}
