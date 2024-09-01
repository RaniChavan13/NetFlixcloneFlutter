import 'package:flutter/material.dart';
// import 'package:netflixclone/view/home_page.dart';
import 'package:netflixclone/widgets/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
       brightness: Brightness.dark,
       scaffoldBackgroundColor: Colors.black,
       bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white ,
        unselectedItemColor: Colors.white54
       )
      ),
      
      home: const BottomNavigationWidget(),
    );
  }
}
