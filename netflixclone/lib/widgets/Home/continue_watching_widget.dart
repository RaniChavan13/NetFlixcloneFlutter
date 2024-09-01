import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/Home/home_utility.dart';

class ContinueWatchingWidget extends StatelessWidget {
  const ContinueWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {"asset": "movieone.jpg"},
      {"asset": "movietwo.jpg"},
      {"asset": "moviethree.jpg"},
      {"asset": "movieone.jpg"},
    ];

    return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text('Continue Watching for Emenalo', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.white),),
                    const SizedBox(height:10,),
   SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:List.generate(movies.length, (index){
            return Row(
              children: [
                HomeUtility(asset: movies[index]['asset']!, iconData:const Icon(Icons.info_outline) , iconData1: const Icon(Icons.more_vert),),
                const SizedBox(width: 3,)
              ],
            );
          })
          // children: [
            // HomeUtility(asset: "movieone.jpg", iconData:Icon(Icons.info_outline) ,iconData1:Icon(Icons.more_vert)),
            // SizedBox(width: 3,),
            // HomeUtility(asset: "movietwo.jpg", iconData:Icon(Icons.info_outline) ,iconData1:Icon(Icons.more_vert)),
            // SizedBox(width: 3,),
            // HomeUtility(asset: "moviethree.jpg", iconData:Icon(Icons.info_outline) ,iconData1:Icon(Icons.more_vert)),
            // SizedBox(width: 3,),
            // HomeUtility(asset: "movieone.jpg", iconData:Icon(Icons.info_outline) ,iconData1:Icon(Icons.more_vert)),
            // Container(
            //   height: MediaQuery.of(context).size.height*.3,
            //   width: MediaQuery.of(context).size.width*.3,
            //   decoration: BoxDecoration(
            //    borderRadius: BorderRadius.circular(1),
            //   ),
            //   child: Column(
            //     children: [
            //     Image.asset('assets/images/movieone.jpg', fit: BoxFit.cover),
            //     const Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Icon(Icons.info_outline),
            //         Icon(Icons.more_vert)
            //       ],
            //     )
            //   ],),
            // ),

            // Column(
            //     children: [
            //       Container(
            //   height: MediaQuery.of(context).size.height*.273,
            //   width: MediaQuery.of(context).size.width*.3,
            //   decoration: BoxDecoration(
            //    borderRadius: BorderRadius.circular(1),
            //   ),
            //     child: Image.asset('assets/images/movieone.jpg', fit: BoxFit.cover),
            //       ),
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width*.3,
            //         child:const Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children:  [
            //           Icon(Icons.info_outline),
            //           Icon(Icons.more_vert)
            //         ],
            //                         ),
            //       )
            //   ],),

            // SizedBox(width: 3,),
            //  Container(
            //   height: MediaQuery.of(context).size.height*.3,
            //   width: MediaQuery.of(context).size.width*.3,
            //   decoration: BoxDecoration(
            //    borderRadius: BorderRadius.circular(1),
            //   ),
            //   child: Image.asset('assets/images/movieone.jpg', fit: BoxFit.cover),
            // ),SizedBox(width: 3,),
            //  Container(
            //   height: MediaQuery.of(context).size.height*.3,
            //   width: MediaQuery.of(context).size.width*.3,
            //   decoration: BoxDecoration(
            //    borderRadius: BorderRadius.circular(1),
            //   ),
            //   child: Image.asset('assets/images/movieone.jpg', fit: BoxFit.cover),
            // ),SizedBox(width: 3,),
            //  Container(
            //   height: MediaQuery.of(context).size.height*.3,
            //   width: MediaQuery.of(context).size.width*.3,
            //   decoration: BoxDecoration(
            //    borderRadius: BorderRadius.circular(1),
            //   ),
            //   child: Image.asset('assets/images/movieone.jpg', fit: BoxFit.cover),
            // )
          // ],
        ),
      ),
                ]
    );
  }
}