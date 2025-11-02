import 'package:facebook_app/data/demo_data.dart';
import 'package:facebook_app/screens/story_view_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_tab_bar.dart';
import 'widgets/home_option_bar.dart';
import 'widgets/post_list_view.dart';
import 'widgets/post_publish_space.dart';
import 'widgets/stiry_list_view.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
          
            CustomAppBar(),
            // SizedBox(height: 10,),
          
          
            CustomTabBar(),
            Divider(
              color: Colors.grey.shade500
            ),
          
            PostPublishSpace(),
           
            Divider(),
            HomeOptionBar(),
            Divider(
              thickness: 8,
              color: Colors.grey.shade500
            ),
           
          
            SizedBox(
              height:10
            ),
          
            StoryList(),
          
          
            SizedBox(height:8),
            Divider(thickness: 8, color: Colors.grey.shade500,),
            PostListView(),
           
            
          
          
          
          
          
          ],),
        ),
      )
      
      
      




    );
  }
}






class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}