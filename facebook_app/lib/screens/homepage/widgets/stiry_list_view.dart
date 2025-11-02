import 'package:flutter/material.dart';

import '../../../data/demo_data.dart';
import '../../story_view_screen.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:218,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:DemoData.stories.length,
        itemBuilder:(context, index) {
          final story = DemoData.stories[index];
         return  Padding(
           padding: const EdgeInsets.all(4.0),
           child: index !=0 ? GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoryViewScreen(story: story)));
    
            },
             child: Container(
                width:150,
                height:210,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey
                  ),
                  image: DecorationImage(image: NetworkImage(story.story), fit: BoxFit.cover),
                       
                ),
                       
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      left: 8,
                      child: CircleAvatar(
                        radius:27,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 24,
                          backgroundImage: NetworkImage(story.profilePicture),
                        )
                      ),
                    )
                       
                       
                  ]
                       
                       
                )
              ),
           ) : Container(
              width: 150,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width:150,
                    height:160,
                    child : Stack(
                      children: [
                        Container(
                          width:150,
                          height:135,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: NetworkImage(DemoData.profilePic), fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                            
                          ),
                        ),
              
                        Align(alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius:25,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, color: Colors.white)
              
                        ))
              
                      ],
                    ),
              
              
                  ),
              
                  Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Create Story', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  ),
                  
                  
                  
                  )
              
              
              
              
                ],
              )
              
            ),
         );
      
        },
      
      
      
      ),
    );
  }
}
