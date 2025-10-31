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
              
          
            ],)
            
          
          
          
          
          
          ],),
        ),
      )
      
      
      




    );
  }
}