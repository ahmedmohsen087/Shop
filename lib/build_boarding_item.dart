import 'package:flutter/material.dart';

class BuildBoardingItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Center(child: Image(image: AssetImage('assets/images/market3.jpeg'),))),
        SizedBox(height: 30,),
        Text('Screen Title',style:Theme.of(context).textTheme.bodyText2),
        SizedBox(height: 30,),
        Text('Screen Body',style: Theme.of(context).textTheme.bodyText1),


      ],
    );
    ;
  }
}
