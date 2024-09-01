import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/Coming_soon/detail_list.dart';
import 'package:netflixclone/widgets/Coming_soon/notifications.dart';

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( 
      //    leading: Container(
      //   width: 2,  // Set a custom width
      //   height: 2, // Set a custom height
      //   decoration: const BoxDecoration(
      //      shape: BoxShape.circle,
      //     color: Colors.red, // Background color of the avatar
      //   ),
      //   child: const Icon(
      //     Icons.notifications,
      //     size: 50, // Adjust icon size to fit the custom circle size
      //   ),
      // ),
      
      // title:const Text('Notifications', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
      // ),
      body:
       const Column(
          children: [
          Padding(
            padding: EdgeInsets.only(top:30.0, right: 16.0, bottom: 16.0, left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 13,
            child: Icon(Icons.notifications),
            ),
            SizedBox(width: 20,),
            Text('Notifications', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],),
          ),
          Notifications(),
          SizedBox(height: 10,),
          DetailList(),
        ],),
    );
  }
}