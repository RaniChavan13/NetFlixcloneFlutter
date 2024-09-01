import 'package:flutter/material.dart';
import 'package:netflixclone/view/coming_soon_page.dart';
import 'package:netflixclone/view/download_page.dart';
import 'package:netflixclone/view/home_page.dart';
import 'package:netflixclone/view/more_page.dart';
import 'package:netflixclone/view/search_page.dart';

class BottomNavigationWidget extends StatefulWidget {

 
  const BottomNavigationWidget({super.key, });

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex=0;

 final List<Widget> pages = const [
    HomePage(), 
    SearchPage(),
    ComingSoonPage(), // Add other pages as needed
    DownloadPage(),
    MorePage(),
  ];

  void onItemTappedIndex(int index){
    setState(() {
       _selectedIndex=index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex], // Display the selected page
      bottomNavigationBar:
    BottomNavigationBar(
      items: const [
         BottomNavigationBarItem(
          icon: Icon(Icons.home,), 
          label: 'Home', 
          backgroundColor: Colors.white54  
           ),
            BottomNavigationBarItem(
          icon: Icon(Icons.search,), 
          label: 'Search', 
          backgroundColor: Colors.white54  
           ),
            BottomNavigationBarItem(
          icon: Icon(Icons.video_collection,), 
          label: 'Coming Soon', 
            backgroundColor: Colors.white54  
           ),
            BottomNavigationBarItem(
          icon: Icon(Icons.download_sharp,), 
          label: 'Download', 
            backgroundColor: Colors.white54  
           ),
            BottomNavigationBarItem(
          icon: Icon(Icons.menu,), 
          label: 'More', 
            backgroundColor: Colors.white54  
           ),
      ],
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      selectedFontSize: 12,
      unselectedFontSize: 10,
      currentIndex: _selectedIndex,
      onTap: onItemTappedIndex,
    ),
    );
  }
}