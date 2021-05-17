import 'package:flutter/material.dart';
import 'package:udemy_flutter/home_screen.dart';
import 'package:udemy_flutter/login_screen.dart';

void main() {
  runApp(MyApp());
}

//Stateless
//StateFul

//Class MyApp
class MyApp extends StatelessWidget
{

  //بيتم استدعاهم اوتومتيك
  //Constructor
  //build
  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }

}

