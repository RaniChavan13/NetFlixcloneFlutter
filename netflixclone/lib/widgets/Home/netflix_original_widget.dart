import 'package:flutter/material.dart';

class NetflixOriginalWidget extends StatelessWidget {
  const NetflixOriginalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
       "movieone.jpg",
      "movietwo.jpg",
      "moviethree.jpg",
      "movieone.jpg",
    ];

    return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text('Netflix Original', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.white),),
                    const SizedBox(height:10,),
   SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
    Row(
                children:List.generate(movies.length, (index){
                  return Padding(padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height*.3,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: 
              BoxDecoration(
                 borderRadius: BorderRadius.circular(1),
              ),
            child: Image.asset('assets/images/${movies[index]}',
                      fit: BoxFit.cover),
                 ),
              );
            }),
          ),
        ),
      ],
    );
  }
}