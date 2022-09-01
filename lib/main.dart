import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/HomeScreen.dart';
import 'package:untitled14/LoginScreen.dart';
import 'package:untitled14/screens/home/components/body.dart';
import 'SignupScreen.dart';
import 'SplachScreen.dart';
import 'constants.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          initialRoute: LoginScreen.id,
      routes: {
        FristScreen.id :(context)=>FristScreen(),
            LoginScreen.id :(context)=>LoginScreen(),
        SignupScreen.id :(context)=>SignupScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
        Body.id :(context)=>Body(),
      },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
      home: FristScreen(),
    );
  }
}
