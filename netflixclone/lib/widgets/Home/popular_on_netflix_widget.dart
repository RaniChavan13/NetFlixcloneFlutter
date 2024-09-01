import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/Home/home_utility.dart';

class PopularOnNetflixWidget extends StatelessWidget {
   final String title;
  const PopularOnNetflixWidget({super.key, required this.title});

   @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {"asset": "moviethree.jpg"},
      {"asset": "movieone.jpg"},
      {"asset": "movietwo.jpg"},
      {"asset": "moviethree.jpg"},
      {"asset": "movieone.jpg"},
    ];

    return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(title, style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.white),),
                     const SizedBox(height:10,),
   SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:List.generate(movies.length, (index){
            return Row(
              children: [
                HomeUtility(asset: movies[index]['asset']!,),
                const SizedBox(width: 3,)
              ],
            );
          })),
      ),
                ]
    );
  }
}