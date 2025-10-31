import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
          
            Row(children: [
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
            SizedBox(height: 10,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              Icon(Icons.home, size: 40,color: Colors.blue.shade600,),
              Icon(Icons.people_outline, size: 40, color: Colors.grey.shade700),
              Icon(Icons.ondemand_video_outlined, size: 35, color: Colors.grey.shade700),
              Icon(Icons.maps_home_work_outlined, size: 35, color: Colors.grey.shade700),
              Icon(Icons.notifications_none_outlined, size: 38, color: Colors.grey.shade700),
              Icon(Icons.menu, size: 38, color: Colors.grey.shade700),





            ],),
            Divider(
              color: Colors.grey.shade500
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: Row(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://tse1.mm.bing.net/th/id/OIP.5E1nwnhAzODo8pYnFvKtXgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3'),
                ),
                SizedBox(width:15),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.grey.shade600,
                    decoration: InputDecoration(
                      hintText: 'Whats on your mind?',
                      
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

            
          
          
          
          
          
          ],),
        ),
      )
      
      
      




    );
  }
}