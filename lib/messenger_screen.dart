import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,

        title:
            Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage('https://i.ytimg.com/vi/jdZp4SHN1Bg/maxresdefault.jpg'),
                ),
                SizedBox(width: 10.0,),
                Text(
                    'Chats',
                style: TextStyle(color: Colors.blue),),



              ],
            ),

        actions:
        [
          IconButton(icon: CircleAvatar(
            radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(Icons.camera_alt_rounded ,size: 16.0,color: Colors.white,)), onPressed: (){}),
          IconButton(icon: CircleAvatar(
              radius:15.0,
          backgroundColor: Colors.blue,
              child: Icon(Icons.edit_outlined,size: 16.0,color: Colors.white,)), onPressed: (){}),


        ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0 ,),
                  color: Colors.grey[300],
                ),
                padding:EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15.0,),
                    Text('Searsh'),
                  ],
                ),
              ),

              SizedBox(height: 20.0,),

              Container(
                height: 110.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildStoryItem(),
                  itemCount: 10,
                  separatorBuilder: (context,index)=>SizedBox(width: 20.0,),

                ),

              ),

              SizedBox(height: 20.0,),

              Container(
              child: ListView.separated(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics() ,

                scrollDirection: Axis.vertical,
                    itemBuilder: (context,index)=>buildChatItem(),
                    itemCount: 10,
                    separatorBuilder: (context,index)=>SizedBox(height: 20.0,),

                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }



  //1-build item
  //2-build list
  //3-add item to list

  Widget buildChatItem()=>  Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://i.ytimg.com/vi/FcvzWYBLKX0/hqdefault.jpg'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top:0 ,
              bottom:3.0 ,
              start:0 ,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor:Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(width: 10.0,),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ahmed Hegazy Mohamed Abdullh',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,),),
            SizedBox(height: 5.0,),
            Row(
              children: [

                Expanded(
                  child: Text('How Are You Ahmed What this work in android Developer Ahmed Hegazy Mohamed Abdullh ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black,
                      fontSize: 10.0,),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                Text('02:00 pm',
                  style: TextStyle(color: Colors.black,
                    fontSize: 10.0,),),
              ],
            )

          ],
        ),
      ),

    ],
  );

  Widget buildStoryItem()=>  Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://i.ytimg.com/vi/FcvzWYBLKX0/hqdefault.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top:0 ,
                bottom:3.0 ,
                start:0 ,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor:Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(height: 6.0,),
        Text('Ahmed Hegazy Mohamed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,)
      ],
    ),
  );




}
