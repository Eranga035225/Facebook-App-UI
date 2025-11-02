import 'package:flutter/material.dart';

import '../../../data/demo_data.dart';

class PostPublishSpace extends StatelessWidget {
  const PostPublishSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 8),
      child: Row(children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(DemoData.profilePic),
        ),
        SizedBox(width:15),
        Expanded(
          child: TextField(
            cursorColor: Colors.grey.shade600,
            decoration: InputDecoration(
              hintText: 'What\'s on your mind?',
              
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 2.0
      
                )
               
              
            
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 2.0
                )
              )
      
            ),
            
          
          ),
        ),
      
      
      ],),
    );
  }
}