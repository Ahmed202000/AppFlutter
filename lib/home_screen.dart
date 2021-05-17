import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.teal,
        leading: Icon(Icons.menu,),

        title: Text('Home'),

        actions:
        [
          IconButton(icon: Icon(Icons.notifications), onPressed: (){}),
          IconButton(icon: Icon(Icons.search), onPressed: (){}),


        ],
        centerTitle: true,
      ),

      body: Column
        (
        children:
        [
          
        ],
      ),


    );
  }

}