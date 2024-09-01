import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/Home/continue_watching_widget.dart';
import 'package:netflixclone/widgets/Home/home_center_widget.dart';
import 'package:netflixclone/widgets/Home/home_image_widget.dart';
import 'package:netflixclone/widgets/Home/home_previews.dart';
import 'package:netflixclone/widgets/Home/netflix_original_widget.dart';
import 'package:netflixclone/widgets/Home/popular_on_netflix_widget.dart';
// import 'package:netflixclone/widgets/bottom_navigation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
            /*const HomeImageWidget(),
            SizedBox(height: MediaQuery.of(context).size.height*.001),
            const HomePreviews(),
            const SizedBox(height: 10,),
            const ContinueWatchingWidget(),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'Popular On Netflix',),
             const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'Trending Now',),
             const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'Top 10 in Nigeria Today',),
             const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'MyList',),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'African Movies',),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'Nollywood Movies & TV',),
            const SizedBox(height: 20,),
            const NetflixOriginalWidget(),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'NWatch it Again',),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'New Releases',),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'TV Thriller & Mysteries',),
            const SizedBox(height: 10,),
            const PopularOnNetflixWidget(title: 'US TV Shows',),*/
            const HomeImageWidget(),
            // SizedBox(height: MediaQuery.of(context).size.height * .01),
            const HomeCenterWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            const HomePreviews(),
            const SizedBox(height: 10),
            const ContinueWatchingWidget(),
            const SizedBox(height: 10), 
            const PopularOnNetflixWidget(title: 'Popular On Netflix'),
            const PopularOnNetflixWidget(title: 'Trending Now'),
            const PopularOnNetflixWidget(title: 'Top 10 in Nigeria Today'),
            const PopularOnNetflixWidget(title: 'My List'),
            const PopularOnNetflixWidget(title: 'African Movies'),
            const PopularOnNetflixWidget(title: 'Nollywood Movies & TV'),
            const SizedBox(height: 20),
            const NetflixOriginalWidget(),
            const PopularOnNetflixWidget(title: 'Watch it Again'),
            const PopularOnNetflixWidget(title: 'New Releases'),
            const PopularOnNetflixWidget(title: 'TV Thrillers & Mysteries'),
            const PopularOnNetflixWidget(title: 'US TV Shows'),
            const SizedBox(height: 10),
            ],
          ),
      ),
       
      //  bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}