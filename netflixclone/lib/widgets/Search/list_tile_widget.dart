// import 'package:flutter/material.dart';

// class ListTileWidget extends StatelessWidget {
//   const ListTileWidget({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final List<String> movies = [
//        "movieone.jpg",
//        "movietwo.jpg",
//        "moviethree.jpg",
//        "movieone.jpg"
//     ];
//     return  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           // mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text('Top Searches', style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold ,color: Colors.white),),
//                     ),
//                     // const SizedBox(height:10,),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: movies.length,
//                       itemBuilder:(context, index){
//                         return ListTile(
//                           leading: Container(
//                             height: 200,
//                             width: 150,
//                             decoration: BoxDecoration(
//                               border: Border.all(),
//                             ),
//                             child: Image.asset(
//                     "assets/images/${movies[index]}",
//                     fit: BoxFit.cover,
//                   ),
//                           ),
//                           trailing: const Icon(Icons.play_circle_outline, color: Colors.white),
//                           title: const Text('Your Favourite Movie',style: TextStyle(fontSize: 16,color: Colors.white),)
//                         );
//                       } ,
//                     ),
//                   )
//                 ]
//     );
//   }
// }
/*
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize:MainAxisSize.min ,
      children: [
         const Text(
          'Top Searches',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                 ),
        // const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: Container(
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Image.asset(
                      "assets/images/${movies[index]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: const Icon(Icons.play_circle_outline, color: Colors.white),
                  title: const Text(
                    'Your Favourite Movie',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}*/
/*
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Top Searches',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: movies.length,
            padding: EdgeInsets.zero,  // Ensures no padding at the top of the list
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ListTile(
                  minTileHeight: MediaQuery.of(context).size.height * 0.1,
                   tileColor: Colors.grey,
                   contentPadding:const EdgeInsets.symmetric(horizontal: 0.0),  // No padding between Text and ListTile
                  leading: Image.asset(
                    "assets/images/${movies[index]}",
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.4,
                     fit: BoxFit.cover,  // Image covers the entire container
                  ),
                  trailing: const Icon(Icons.play_circle_outline, color: Colors.black),
                  title: const Text(
                    'Your Favourite Movie',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}*/

/*
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Top Searches',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Flexible(
          fit:FlexFit.tight ,
          child: ListView.builder(
            itemCount: movies.length,
            padding: EdgeInsets.zero,  // Ensures no padding at the top of the list
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ListTile(
                  minLeadingWidth: 0, 
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                  leading: Container(
                     height: MediaQuery.of(context).size.height * 0.25,
                     width: MediaQuery.of(context).size.width * 0.4,
                    // height: 500,
                    // width: 150,
                    child: Image.asset(
                      "assets/images/${movies[index]}",
                      fit: BoxFit.cover,  // Image covers the entire container
                    ),
                    // child: ColoredBox(color: Colors.red),
                  ),
                  trailing: const Icon(Icons.play_circle_outline, color: Colors.white),
                  title: const Text(
                    "Your Favourite Movie",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  tileColor: Colors.grey,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
      "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
    ];

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Text(
              'Top Searches',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ListTile(
                  minLeadingWidth: 0, 
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                  leading: Container(
                     height: MediaQuery.of(context).size.height * 0.25,
                     width: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset(
                      "assets/images/${movies[index]}",
                      fit: BoxFit.cover,  // Image covers the entire container
                    ),
                  ),
                  trailing: const Icon(Icons.play_circle_outline, color: Colors.white),
                  title: const Text(
                    "Your Favourite Movie",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  tileColor: Colors.grey,
                ),
              );
            },
            childCount: movies.length,
          ),
        ),
      ],
    );
  }
}



