import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
