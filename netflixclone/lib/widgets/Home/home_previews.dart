import 'package:flutter/material.dart';

class HomePreviews extends StatelessWidget {
  const HomePreviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Previews', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.white),),
                   SizedBox(height:10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                         CircleAvatar(
                         maxRadius: 60,
                         backgroundImage: AssetImage('assets/images/movieone.jpg'),
                         backgroundColor: Colors.transparent,
                        ),
                         CircleAvatar(
                         maxRadius: 60,
                         backgroundImage: AssetImage('assets/images/movietwo.jpg'),
                         backgroundColor: Colors.transparent,
                        ),
                         CircleAvatar(
                         maxRadius: 60,
                         backgroundImage: AssetImage('assets/images/moviethree.jpg'),
                         backgroundColor: Colors.transparent,
                        ),
                         CircleAvatar(
                         maxRadius: 60,
                         backgroundImage: AssetImage('assets/images/movieone.jpg'),
                         backgroundColor: Colors.transparent,
                        )
                      ],
                    ),
                  )
                ],
              ) ;
  }
}