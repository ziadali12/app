import 'package:flutter/material.dart';
import 'package:untitled14/LoginScreen.dart';

class FristScreen extends StatefulWidget {
  static String id='FirstScreen';
  const FristScreen({Key? key}) : super(key: key);

  @override
  State<FristScreen> createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Image.asset("photo/icons8-add-shopping-cart-100.png"),
          )
        ],
      ),
    );
  }
}