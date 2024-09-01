import 'package:flutter/material.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
           children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
              child: Opacity(
                opacity: 0.369,
                child: Image.asset('assets/images/wallpaper.jpg', fit: BoxFit.cover,)),
            ),
            Positioned(
              top:50,
              left: 20,
              child: SizedBox(
                        height: 50,
                        width:40,
                          child: Image.asset('assets/images/netflix-logo.png',fit: BoxFit.cover,)
                      ),),
              const Positioned(
                 top: 50,
                 left: 60,
                 right: 20,  // To ensure the SingleChildScrollView takes full width if necessary
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                       SizedBox(width: 60,),
                       Row(
                    children: [
                      Text('Tv Shows', style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(width: 20),  // Added spacing between texts
                      Text('Movies', style: TextStyle(color: Colors.white,fontSize: 18)),
                      SizedBox(width: 20), 
                      Text('My List', style: TextStyle(color: Colors.white,fontSize: 18)), 
                      SizedBox(width: 20), 
                      Text('My List', style: TextStyle(color: Colors.white,fontSize: 18)),
                      SizedBox(width: 20), 
                      Text('My List', style: TextStyle(color: Colors.white,fontSize: 18)),// Added spacing between texts
                    ]
                      ),
                    ],
                  ),
                ),
              ),
           ]
           )
           ;
  }
}