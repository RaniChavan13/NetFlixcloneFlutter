import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    // return TextFormField(
    //   decoration: InputDecoration(
    //     suffixIcon: Icon(Icons.search),
    //     prefixIcon: Icon(Icons.mic),
    //     hintText: "Search for a show, movies, genre, etc",
    //   ),
    // );
    return SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  hintText:"Search for a show, movies, genre, etc",
                  padding: const WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 10)),
                  onTap: (){
                    controller.openView();
                  },
                  onChanged: (_){
                    controller.openView();
                  },
                  
                  leading: const Padding(
                    padding:  EdgeInsets.only(left:16.0),
                    child:  Icon(Icons.search),
                  ),
                  trailing:  const <Widget>[
                Tooltip(
                  message: 'Search on voice',
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.mic),
                  )
                )
              ],
                );
              }, suggestionsBuilder: (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    controller.closeView(item);
                  });
                },
              );
            });
                },
    );
  }
}