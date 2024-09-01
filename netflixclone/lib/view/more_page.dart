import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.1,
              color: Colors.grey,
            ),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, size: 16,),
                Text(' Manage Profile', style: TextStyle(fontSize: 16),)
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.2,
               color: Colors.grey.shade900,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  children: [
                     Icon(Icons.message_rounded, size: 30,),
                     SizedBox(width: 10,),
                    Text("Tell friends about Netflix",style: TextStyle(fontSize: 20)),
                  ],
                ),
                Text.rich(TextSpan(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."))
                ,
                // SizedBox(height: 25,),
                Text('Terms & condition',style: TextStyle(fontSize: 16))
              ],),
            ),
            // const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.3,
                  height: MediaQuery.of(context).size.height*.06,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white),
                   child: TextButton(onPressed: (){}, child: const Text('Copy Link', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width*.69,
                //   height: MediaQuery.of(context).size.height*.06,
                //   color: Colors.grey.shade900,
                //    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white),
                //     child: TextButton(onPressed: (){}, child: const Text('Copy Link', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)),
                // ),
              ],
            ),
        
            // Container(
            //    width: MediaQuery.of(context).size.width,
            //    height: MediaQuery.of(context).size.height*.15,
            //    color: Colors.grey.shade900,
            //    child:Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       const ShareIcons(asset: "whatsapp.png"),
            //       const ShareIcons(asset: "fb.png"),
            //       const ShareIcons(asset: "gmail.png"),
            //         SizedBox(
            //    width: MediaQuery.of(context).size.width*.2,
            //    height: MediaQuery.of(context).size.height*.1,
            //    child: const Icon(Icons.more_horiz),
            //        )
            //     ],
            //   //   children: [
            //   //    Container(
            //   //  width: MediaQuery.of(context).size.width*.2,
            //   //  height: MediaQuery.of(context).size.height*.1,
            //   //  child: Image.asset('assets/images/whatsapp.png',fit: BoxFit.cover,),
            //   //  ),
            //   //   Container(
            //   //  width: MediaQuery.of(context).size.width*.2,
            //   //  height: MediaQuery.of(context).size.height*.1,
            //   //  child: Image.asset('assets/images/fb.png', fit: BoxFit.cover,),
            //   //  ),
            //   //  VerticalDivider(width: 1,),
            //   //   Container(
            //   //  width: MediaQuery.of(context).size.width*.2,
            //   //  height: MediaQuery.of(context).size.height*.1,
            //   //  child: Image.asset('assets/images/gmail.png',fit: BoxFit.cover,),
            //   //  ),
            //   //  VerticalDivider(width: 1,),
            //   //   Container(
            //   //  width: MediaQuery.of(context).size.width*.2,
            //   //  height: MediaQuery.of(context).size.height*.1,
            //   //  child: Icon(Icons.more_horiz),
            //   //  ),
            //   //  ],
            //    )
            // )
          //         Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height * 0.125,
          //     color: Colors.grey.shade900,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         const ShareIcons(asset: "whatsapp.png"),
          //         const VerticalDivider(
          //           color: Colors.grey,
          //           thickness: 2,
          //           width: 1,
          //         ),
          //         const ShareIcons(asset: "fb.png"),
          //         const VerticalDivider(
          //           color: Colors.grey,
          //           thickness: 2,
          //           width: 1,
          //         ),
          //         const ShareIcons(asset: "gmail.png"),
          //         SizedBox(
          //           width: MediaQuery.of(context).size.width * 0.2,
          //           height: MediaQuery.of(context).size.height * 0.1,
          //           child: const Icon(Icons.more_horiz, color: Colors.white),
          //         ),
          //       ],
          //     ),
          //   )
          //     ],),
          //   );
          // }
        
        
        // class ShareIcons extends StatelessWidget {
        //   final String asset;
        //   const ShareIcons({super.key, required this.asset});
        
        //   @override
        //   Widget build(BuildContext context) {
        //     // return Row(
        //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //   children: [
        //     //     Image.asset('assets/images/$asset', height: MediaQuery.of(context).size.width*.2, width: MediaQuery.of(context).size.height*.1,),
        //     //              Container(
        //     //              width: MediaQuery.of(context).size.width*.01,
        //     //              height: MediaQuery.of(context).size.height*.08,
        //     //              color: Colors.grey.shade300,
        //     //              ),
        //     //   ],
        //     // );
        //     return Image.asset(
        //       'assets/images/$asset',
        //       height: MediaQuery.of(context).size.height * 0.08,
        //       width: MediaQuery.of(context).size.width * 0.18,
        //       // fit: BoxFit.cover,
        //     );
        //     // return Container(
        //     //   height: MediaQuery.of(context).size.height * 0.08,
        //     //   width: MediaQuery.of(context).size.width * 0.18,
        //     //   color: Colors.amber,
        //     // );
        //   }
        // }
        
        Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        color: Colors.grey.shade900,
        child: Row(
          children: [
            const ShareIcons(asset: "whatsapp.png"),
            _buildDivider(),
            const ShareIcons(asset: "fb.png"),
            _buildDivider(),
            const ShareIcons(asset: "gmail.png"),
             _buildDivider(),// Spacer to push the "more_horiz" icon to the right end
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.1,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.more_horiz, color: Colors.white, size:40,),
               Text('More', style: TextStyle(fontSize: 18),)
          ]
              )
            ),
          ],
        ),
          ),
          const Row(children: [
            Icon(Icons.done, size: 50,),
            Text('My List', style: TextStyle(fontSize: 20),)
        ],)
        , const Divider(height: 3,),
        
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('App Setting',style: TextStyle(fontSize: 20)),
        const Text('Account',style: TextStyle(fontSize: 20)),
        const Text('Help',style: TextStyle(fontSize: 20)),
        const Text('Sign Out',style: TextStyle(fontSize: 20)),
          ],
        )
        ],),
      ),
      

    );
  }

 Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.height * 0.1,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}

class ShareIcons extends StatelessWidget {
  final String asset;
  const ShareIcons({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.asset(
        'assets/images/$asset',
        fit: BoxFit.cover,
      ),
    );
  }
}