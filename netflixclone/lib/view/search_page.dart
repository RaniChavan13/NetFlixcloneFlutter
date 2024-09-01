// import 'package:flutter/material.dart';
// import 'package:netflixclone/widgets/Search/list_tile_widget.dart';
// import 'package:netflixclone/widgets/Search/text_field_widget.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({super.key});

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Column(
//         children: [
//            Padding(
//              padding: EdgeInsets.only(top:50.0),
//              child: TextFieldWidget(),
//            ),
//            SizedBox(height: 20),
//           Flexible(child: ListTileWidget()),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/Search/list_tile_widget.dart';
import 'package:netflixclone/widgets/Search/text_field_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: TextFieldWidget(),
          ),
          SizedBox(height: 20),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 8.0),
          //   child: Text(
          //     'Top Searches',
          //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          //   ),
          // ),
          Expanded(child: ListTileWidget(),)
          
        ],
      ),
    );
  }
}

