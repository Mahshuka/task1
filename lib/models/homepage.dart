import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget CustomView(context){
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Container(
        height: 300,
       // width: MediaQuery.of(context).size.height,

        child: GridView.count(crossAxisCount: 2,mainAxisSpacing:15,crossAxisSpacing:20,children: [
          Container(
          //  height: MediaQuery.of(context).size.height*0.50,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red),
            child: Center(child: Text("ABCD",style: _textStyle)),
          ),
          Container(
          //  height: MediaQuery.of(context).size.height*0.50,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red),
            child: Center(child: Text("EFGH",style: _textStyle)),
          ),
          Container(
           // height: MediaQuery.of(context).size.height*0.50,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red),
            child: Center(child: Text("IJKL",style: _textStyle)),
          ),
          Container(
           // height: MediaQuery.of(context).size.height*0.50,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red),
            child: Center(child: Text("MNO",style: _textStyle)),
          ),

        ],),
      ),
    );
  }
Widget CarouselView(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CarouselSlider(

        items: [
          Container(
width: 250,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.red,
              borderRadius: BorderRadius.circular(8),

            ),
            child: Icon(MdiIcons.truck,size: 100,),
          )
        ],options:CarouselOptions(
        height: 140,

        autoPlay: true,
        aspectRatio: 16/9,
        autoPlayAnimationDuration: Duration(seconds: 5),
        viewportFraction: 0.8
      ) ,
      ),
    );

}
Widget SmoothPageIndicatorView(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SmoothPageIndicator(controller: PageController(), count: 4,
        effect: ScrollingDotsEffect(
          dotColor: Colors.red,
activeDotColor: Colors.red,
          activeDotScale: 1.3,
          maxVisibleDots: 5,
          radius: 8,
          spacing: 10,
          dotHeight: 12,dotWidth: 12
        ),
        ),
      ),
    );
}

  TextStyle _textStyle = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.menu)
        ],
      ),
body: ListView(

  children: [

    CustomView(context),
    Center(child: Text('PRODUCED BY',style: TextStyle(color: Colors.yellowAccent,fontSize: 35,fontWeight: FontWeight.bold),)),


CarouselView(),
SmoothPageIndicatorView()

  ],
),
    );
  }
}
