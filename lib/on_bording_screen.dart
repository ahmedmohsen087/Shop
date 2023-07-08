import 'package:flutter/material.dart';
import 'package:shop/login-screen/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'navidetor.dart';

class BoardingModel {
   final String image ;
   final String title ;
   final String body ;
  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
});
}
class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/market3.jpeg',
        title: 'On Board 1 Title',
        body: 'On Board 1 Body') ,
    BoardingModel(
        image: 'assets/images/market4.jpeg',
        title: 'On Board 2 Title',
        body: 'On Board 2 Body') ,
    BoardingModel(
        image: 'assets/images/market5.jpeg',
        title: 'On Board 3 Title',
        body: 'On Board 3 Body') ,
  ];

  bool isLast = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            NavigateReplace(context,LoginScreen());

          },
              child: Text('Skip',style: TextStyle(color: Colors.deepOrange),)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                itemBuilder: (context, index) => BuildBoardingItem(boarding[index]),
                itemCount : boarding.length,
                onPageChanged: (int index){
                  if(index==boarding.length-1)
                  {
                    setState(() {
                      isLast = true ;
                    });
                  }else{
                    setState(() {
                      isLast = false ;
                    });
                  }
                },
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SmoothPageIndicator(
                    controller:boardController ,
                    count: boarding.length,
                  effect:ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.deepOrange
                  ),
                ),
                Spacer(),
                FloatingActionButton(onPressed: ()
                {
                  if(isLast){
                    NavigateReplace(context,LoginScreen());
                  }else{
                    boardController.nextPage(
                        duration: Duration(milliseconds: 750),
                        curve: Curves.bounceOut);
                  }


                },
                child: Icon(Icons.arrow_forward_ios),)
              ],
            )
          ],
        ),
      ),
    );


  }

 Widget BuildBoardingItem(BoardingModel model)=> Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     Expanded(child: Center(child: Image(image: AssetImage('${model.image}'),))),
     SizedBox(height: 30,),
     Text('${model.title}',),
     SizedBox(height: 30,),
     Text('${model.body}',style:TextStyle(fontSize: 12)),
     SizedBox(height: 30,),



   ],
 );
}
