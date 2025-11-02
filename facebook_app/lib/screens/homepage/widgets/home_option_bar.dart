import 'package:flutter/material.dart';

class HomeOptionBar extends StatelessWidget {
  const HomeOptionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}