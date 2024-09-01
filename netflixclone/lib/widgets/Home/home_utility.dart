import 'package:flutter/material.dart';

class HomeUtility extends StatelessWidget {
  const HomeUtility({super.key, required this.asset,  this.iconData, this.iconData1});

final String asset;
final Widget? iconData; 
final Widget? iconData1;

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Container(
              height: MediaQuery.of(context).size.height*.273,
              width: MediaQuery.of(context).size.width*.3,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(1),
              ),
                child: Image.asset('assets/images/$asset', fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.3,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      // if(iconData==null)iconData!,
                      //  if(iconData1==null)iconData1!
                      iconData ?? const SizedBox.shrink(),  // Provide a default empty SizedBox if iconData is null
                      iconData1 ?? const SizedBox.shrink(), 
                    ],
                                    ),
                  )
              ],);
  }
}