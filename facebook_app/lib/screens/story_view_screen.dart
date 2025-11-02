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
    return Scaffold(
      backgroundColor:Colors.black,
      body: Stack(
        children: [
          SafeArea(child: BackButton()),
          Align(
            alignment: Alignment.center,
            child: Image.network(widget.story.story, width:MediaQuery.sizeOf(context).width, fit: BoxFit.cover),),
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