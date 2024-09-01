import 'package:flutter/material.dart';

class HomeCenterWidget extends StatelessWidget {
  const HomeCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white)
                  ),
                  alignment: Alignment.center,
                  child: const Text('Top\n10',textAlign: TextAlign.center, style: TextStyle(fontSize: 6),),
                ),
                const SizedBox(width: 10,),
                const Text("#2 in Nigeria Today",style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.001),
            SizedBox(
              height:  MediaQuery.of(context).size.height*.1,
              //  color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Icon(Icons.add, size: 40,),
                    Text('My List')
                     ]
                    ),
                    const SizedBox(width: 30,),
                  Container(
                    height:  MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                       color: Colors.white
                      ),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow, size: 40, color: Colors.black,)),
                        const Text('Play',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Colors.black), )
                      ],
                    ),
                  ),
                  const SizedBox(width: 30,),
                    const Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                     children:[
                   Icon(Icons.info_outline,size: 40,),
                   Text('Info')
                   ]
                   )
                ],
              ),
            ),
          ],
        );
  }
}