import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;
  String? _errorMessage (String str)
    {
    switch(hint)
    {
      case 'Enter your name' : return 'Name is empty';
      case 'Enter your email': return 'Email is empty';
      case 'Enter your password': return 'Passwoed is empty';
    }
  }
  CustomTextField({required this.onClick,required this.icon,required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return _errorMessage (hint);
          }

        },
        onSaved: (text)
        {

        },
        obscureText: hint =='Enter your password' ? true:false,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon,color: KMainColor,),
          filled: true,
          fillColor: KLoginColor ,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
        ),
      ),
    );
  }
}