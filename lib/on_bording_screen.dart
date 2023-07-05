import 'package:flutter/material.dart';

import 'build_boarding_item.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) => BuildBoardingItem(),
                itemCount: 3,
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Text('indicator'),
                Spacer(),
                FloatingActionButton(onPressed: (){},
                child: Icon(Icons.arrow_forward_ios),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
