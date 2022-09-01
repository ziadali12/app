import 'package:flutter/material.dart';
import 'package:untitled14/SignupScreen.dart';
import 'package:untitled14/constants.dart';
import 'package:untitled14/screens/home/components/body.dart';
import 'package:untitled14/widgets/custom_textfield.dart';



class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor:KMainColor,
      body: ListView(
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
            hint: 'Enter your Email',icon: Icons.email, onClick:(){},
          ),
          SizedBox(height: height*.03 ,),
          CustomTextField(
            onClick: (){},
            hint: 'Enter your password',
            icon: Icons.lock,
          ),
          SizedBox(height: height*.05 ,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:120 ),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Login",style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Body()),
                );
              },
            ),

          ),
          SizedBox(height: height*.05 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Don\'t have an account ?',style: TextStyle(
                  color: Colors.white,fontSize: 20
                ),),


              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignupScreen.id);
                },
                child: Text("  "'Sing up',style: TextStyle(
                  color: Colors.black,fontSize: 20
                ),),
              )
            ],
          )
        ]
      ),
    );
  }
}


