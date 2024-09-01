// /*import 'package:flutter/material.dart';

// class Notifications extends StatelessWidget {
//   const Notifications({super.key});



//   @override
//   Widget build(BuildContext context) {
//     //  final List<map<String, string>> movies = [
//     //    "movie":[
//     //   "movieone.jpg",
//     //    "movietwo.jpg",
//     //    "moviethree.jpg",
//     //   "movieone.jpg"
//     //   ],
//     //    title:["hello", "hiii", "How are you"],
//     //    subtitle:["dhds", "gdgsj", "hjcghwfdjw", "jkgdtwe"]

//     //  ];

// final List<Map<String, String>> movies = [
//   {
//     "filename": "movieone.jpg",
//     "title": "hello",
//     "subtitle": "dhds",
//     "date":"dec 10"
//   },
//   {
//     "filename": "movietwo.jpg",
//     "title": "hiii",
//     "subtitle": "gdgsj",
//     "date":"nov 10"
//   },
//   {
//     "filename": "moviethree.jpg",
//     "title": "How are you",
//     "subtitle": "hjcghwfdjw",
//     "date":"oct 10"
//   },
//   {
//     "filename": "movieone.jpg",
//     "title": "jkgdtwe",
//     "subtitle": "kghjkuih" ,
//     "date":"sept 10"// Assuming no subtitle for this movie
//   }
// ];
// return Container(
//       height: MediaQuery.of(context).size.height * 0.18,
//       width: MediaQuery.of(context).size.width,
//       child: ListView.builder(
//         padding: EdgeInsets.zero,
//         itemCount: movies.length,
//         itemBuilder: (context, index) {
//           return Card(
            
//             child: ListTile(
//               minLeadingWidth: 0,
//               contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//               title: Text(movies[index]['title']!),
//               // subtitle: Text(movies[index]['subtitle']! \n movies[index]['date']!),
//                subtitle: RichText(
//                 text: TextSpan(
//                   style: DefaultTextStyle.of(context).style,
//                   children: [
//                     TextSpan(
//                       text: "${movies[index]['subtitle']} \n", // First line
//                     ),
//                     TextSpan(
//                       text: movies[index]['date'], // Second line
//                       style: TextStyle(color: Colors.grey, fontSize: 12), // Optional: add styling for date
//                     ),
//                   ],
//                 ),
//               ),
//               leading: Image.asset(
//                 "assets/images/${movies[index]['filename']}",
//                 width: MediaQuery.of(context).size.width/2.5, // Set a fixed width for images
//                 height: MediaQuery.of(context).size.height*0.3 , // Set a fixed height for images
//                 fit: BoxFit.cover, // Ensure image covers the box
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }*/

// import 'package:flutter/material.dart';

// class Notifications extends StatelessWidget {
//   const Notifications({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     final containerHeight= MediaQuery.of(context).size.height * 0.27;

//     final List<Map<String, String>> movies = [
//       {
//         "filename": "movieone.jpg",
//         "title": "hello",
//         "subtitle": "dhds",
//         "date": "2024-08-10"
//       },
//       {
//         "filename": "movietwo.jpg",
//         "title": "hiii",
//         "subtitle": "gdgsj",
//         "date": "2024-08-09"
//       },
//       {
//         "filename": "moviethree.jpg",
//         "title": "How are you",
//         "subtitle": "hjcghwfdjw",
//         "date": "2024-08-08"
//       },
//       {
//         "filename": "movieone.jpg",
//         "title": "jkgdtwe",
//         "subtitle": "kghjkuih",
//         "date": "2024-08-07"
//       }
//     ];

//     return SizedBox(
//       height: containerHeight,
//       width: MediaQuery.of(context).size.width,
//       child: ListView.builder(
//         padding: EdgeInsets.zero, // Remove padding from ListView
//         itemCount: movies.length,
//         itemBuilder: (context, index) {
//           return 
//           Card(
//             // color: Colors.grey.shade400,
//             // child: Container(
//             //    padding: const EdgeInsets.symmetric( vertical: 4.0,horizontal: 4.0), // Custom padding
//               // margin: const EdgeInsets.only(bottom: 2.0), // Add margin between items
//               // decoration: BoxDecoration(
//               //   color: Colors.grey.withOpacity(0.3), // Background color
//               //   borderRadius: BorderRadius.circular(10.0), // Rounded corners
//               //   boxShadow: [
//               //     BoxShadow(
//               //       color: Colors.grey.withOpacity(0.3), // Shadow color
//               //       spreadRadius: 2,
//               //       blurRadius: 5,
//               //       // offset: Offset(0, 3), // Shadow position
//               //     ),
//               //   ],
//               // ),
//               child: Row(
//                 // crossAxisAlignment: CrossAxisAlignment.start,// Align content to the top
//                 children: [
//                   ClipRRect(
//                     // borderRadius: BorderRadius.circular(10.0), // Rounded image corners
//                     child: Image.asset(
//                       "assets/images/${movies[index]['filename']}",
//                       width: MediaQuery.of(context).size.width / 2.5, // Custom image width
//                       height: containerHeight / 2, // Custom image height
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(width: 16.0), // Space between image and text
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start, 
//                    // Align text to the left
//                     children: [
//                       Text(
//                         movies[index]['title']!,
//                         style: const TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         movies[index]['subtitle']!,
//                         style: const TextStyle(fontSize: 14.0, color:Colors.white ),
//                       ),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         movies[index]['date']!,
//                         style: const TextStyle(fontSize: 12.0, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             // ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.195;

    final List<Map<String, String>> movies = [
      {
        "filename": "movieone.jpg",
        "title": "hello",
        "subtitle": "dhds",
        "date": "2024-08-10"
      },
      {
        "filename": "movietwo.jpg",
        "title": "hiii",
        "subtitle": "gdgsj",
        "date": "2024-08-09"
      },
      {
        "filename": "moviethree.jpg",
        "title": "How are you",
        "subtitle": "hjcghwfdjw",
        "date": "2024-08-08"
      },
      {
        "filename": "movieone.jpg",
        "title": "jkgdtwe",
        "subtitle": "kghjkuih",
        "date": "2024-08-07"
      }
    ];

    return Container(
      height: containerHeight, // Card height to contain the ListView
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color:Colors.grey.shade600 ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all( 4.0), // Padding around each row
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    "assets/images/${movies[index]['filename']}",
                   width: MediaQuery.of(context).size.width / 2.4, // Custom image width
                     height: containerHeight / 2.09, // Adjust image height
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movies[index]['title']!,
                        style: const TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      // const SizedBox(height: 4.0),
                      Text(
                        movies[index]['subtitle']!,
                        style: const TextStyle(fontSize: 16.0,color: Colors.white),
                      ),
                      // const SizedBox(height: 4.0),
                      Text(
                        movies[index]['date']!,
                        style: const TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

