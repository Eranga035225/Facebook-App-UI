import 'package:facebook_app/data/demo_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text('facebook', style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold )),
                Spacer(),
                IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.add,),
                   style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)
                   ),
                   
                   ),
                   IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.search,),
                   style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)
                   ),
                   
                   ),
                   IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.messenger,),
                   style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)
                   ),
                   
                   ),
                
                      
              ],),
            ),
            SizedBox(height: 10,),
          
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                Icon(Icons.home, size: 40,color: Colors.blue.shade600,),
                Icon(Icons.people_outline, size: 40, color: Colors.grey.shade700),
                Icon(Icons.ondemand_video_outlined, size: 35, color: Colors.grey.shade700),
                Icon(Icons.maps_home_work_outlined, size: 35, color: Colors.grey.shade700),
                Icon(Icons.notifications_none_outlined, size: 38, color: Colors.grey.shade700),
                Icon(Icons.menu, size: 38, color: Colors.grey.shade700),
                      
                      
                      
                      
                      
              ],),
            ),
            Divider(
              color: Colors.grey.shade500
            ),
          
            Padding(
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
            ),
           
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.video_call, color: Colors.red, size: 32),
                     SizedBox(width:3),
                    Text('Live', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                      
                  ],
                      
                ),
                    Row(
                  children: [
                    Icon(Icons.image, color: Colors.green, size: 28),
                     SizedBox(width:3),
                    Text('Photo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                    
                  ],
                      
                ),
                    Row(
                  children: [
                    Icon(Icons.face, color: Colors.amber.shade600, size: 28),
                    SizedBox(width:5),
                    Text('Feeling/Activity', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                    
                  ],
                      
                )
                      
                      
              ],),
            ),
            Divider(
              thickness: 8,
              color: Colors.grey.shade500
            ),
          
            SizedBox(
              height:10
            ),
          
            SizedBox(
              height:218,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:DemoData.stories.length,
                itemBuilder:(context, index) {
                  final story = DemoData.stories[index];
                 return  Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: index !=0 ? Container(
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
            ),
          
          
            SizedBox(height:8),
            Divider(thickness: 8, color: Colors.grey.shade500,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: DemoData.posts.length,
              itemBuilder: (context, index){
                final post = DemoData.posts[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              radius:30,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage(post.profilePicture, ),
                                                    
                              ),
                            ),
                          ),
                          SizedBox(width:8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(post.name, style:TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              Row(
                                children: [
                                  Text(post.time, style: TextStyle(color: Colors.grey.shade800)),
                                  SizedBox(width:4),
                                  Icon(Icons.public, color: Colors.grey.shade800, size: 18)

                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.more_horiz_outlined, color: Colors.grey.shade800,),
                          SizedBox(width:20),
                          Icon(Icons.close, color: Colors.grey.shade800, ),


                        ],
                      
                      
                      
                      ),
                    ),

                    post.caption != null ? Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(post.caption!, style:TextStyle(fontSize: 16)),
                      ),
                    ) : SizedBox(),

                    Image.network(post.postImage, fit: BoxFit.cover, width: MediaQuery.sizeOf(context).width,),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        CircleAvatar(
                          radius:10,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.thumb_up, color: Colors.white, size: 14,),
                      
                        ),
                        SizedBox(width:2),
                        CircleAvatar(
                          radius:10,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.favorite, color: Colors.white, size: 14,),
                      
                        ),
                        SizedBox(width:3),
                        Text(post.reacts.toString()),
                        Spacer(),
                        Text('${post.commentCount.toString()} comments')
                      ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: [
                            Icon(Icons.thumb_up_outlined, color: Colors.grey.shade600,),
                            SizedBox(width:4),
                            Text('Like', style:TextStyle(fontSize: 14))
                            
                          
                          ],),
                          Row(children: [
                            Icon(Icons.comment, color: Colors.grey.shade600,),
                            SizedBox(width:4),
                            Text('Comment', style:TextStyle(fontSize: 14))
                            
                          
                          ],),
                          Row(children: [
                            Icon(Icons.share_outlined, color: Colors.grey.shade600,),
                            SizedBox(width:4),
                            Text('Share', style:TextStyle(fontSize: 14))
                            
                          
                          ],),
                        ],
                      ),
                    ),

                    Divider(),








                  ]
                );

          
          
          
          
              }
            )
          
          
            
          
          
          
          
          
          ],),
        ),
      )
      
      
      




    );
  }
}