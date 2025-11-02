import 'package:facebook_app/data/demo_data.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';

class StoryViewScreen extends StatefulWidget {

   final StoryModel story;
   StoryViewScreen({super.key, required this.story});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor:Colors.black,
      body: Stack(
        children: [
          
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.network(widget.story.story, width:size.width, fit: BoxFit.cover)
              ),
              
              
              ),
          SizedBox(width:size.width, height: size.height,
          child: Row(children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container( //left
                height: size.height,
                width: size.width/2,
                color: Colors.transparent
              ),
            ),
            GestureDetector(
              onTap: (){
                // print('Right side clicked');

              },
              child: Container( //right
                height: size.height,
                width: size.width/2,
                color: Colors.transparent
              ),
            )

         


            ]
          )
          ,),
          
          
         
          Align(alignment: Alignment.bottomCenter,
            child: SafeArea(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  hintText: 'Type here ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),

                    

                  )

                ),




              ),
            )),
            )

        ],



      )
    );
  }
}