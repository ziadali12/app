
import 'package:flutter/material.dart';
import 'package:untitled14/HomeScreen.dart';
import 'package:untitled14/LoginScreen.dart';
import 'package:untitled14/widgets/custom_textfield.dart';
import 'constants.dart';


class SignupScreen extends StatelessWidget {
  static String id ='SignupScreen';
  String? _email,_password;


  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState>_globalKey =GlobalKey<FormState>();
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:KMainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  height: MediaQuery.of(context).size.height*.2,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('photo/icons8-add-shopping-cart-100.png'),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Text(
                            'ShopMarket',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25
                            ),
                          )
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: height*.1 ,),
              CustomTextField(
                  onClick: (){},
                  icon: Icons.perm_identity,
                  hint: "Enter your name"),
              SizedBox(height: height*.03 ,),
              CustomTextField(
                onClick:(value)
                {
                  _email=value;
                },
                hint: 'Enter your email',icon: Icons.email,
              ),
              SizedBox(height: height*.03 ,),
              CustomTextField(
                hint: 'Enter your password',
                icon: Icons.lock,
                onClick:(value)
                {
                  _password=value;
                },
              ),
              SizedBox(height: height*.05 ,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:120 ),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Sign up",style: TextStyle(color: Colors.black),),
                  onPressed: () async
                  {
                    Navigator.pushNamed(context, HomeScreen.id);
                    if (_globalKey.currentState!.validate()){
                      _globalKey.currentState?.save();
                      print(_email);
                      print(_password);

                   }
                  },
                ),

              ),
              SizedBox(height: height*.05 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Do have an account ?',style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),


                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text("  "'Login',style: TextStyle(
                        color: Colors.black,fontSize: 20
                    ),),
                  )
                ],
              )
            ]
        ),
      ),
    );
  }
}
