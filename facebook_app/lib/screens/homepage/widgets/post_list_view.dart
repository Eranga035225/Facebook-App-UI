import 'package:flutter/material.dart';

import '../../../data/demo_data.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
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
          
          ;
  }
}