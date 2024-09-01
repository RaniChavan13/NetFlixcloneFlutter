import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Downloads'),),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
        const Text("Introducing Downloads For You", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        const Text.rich(TextSpan(text: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."))
        ,const SizedBox(height: 20,),
        const Center(
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey,
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.06,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue.shade900,),
          child:  TextButton(onPressed: (){}, child:const Text("SETUP",style: TextStyle(fontSize: 16,)) )
        ), const SizedBox(height: 20,),
        Center(
          child: Container(
            
            width: MediaQuery.of(context).size.width*.6,
            height: MediaQuery.of(context).size.height*.06,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey,),
            child:  TextButton(onPressed: (){}, child:const Text("Find Somethig to Download",style: TextStyle(fontSize: 16, color: Colors.white)) )
          ),
        ),
        ],),
      ),
    );
  }
}