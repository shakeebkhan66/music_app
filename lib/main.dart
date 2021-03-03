import 'package:flutter/material.dart';
import 'package:music_app/colors.dart';
import 'package:music_app/navbar.dart';
import 'package:music_app/playerControls.dart';

import 'AlbumArt.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Lobster",
        ),
        home: HomePage(),
      )
  );
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double sliderValue=2;
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavigationBar(),
          Container(
            height: height/2.5,
            child: ListView.builder(itemBuilder: (context,index){
              ///// ListView. builder is a way of constructing the list
              // where children's (Widgets) are built on demand.
              // However, instead of returning a static widget,
              // it calls a function which can be called multiple times (based on itemCount )
              // and it's possible to return different widget at each call.
              return AlbumArt();
            },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text("Gidget", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: darkprimaryColor),),
          Text("The Free Nationals", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: darkprimaryColor),),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)
            ),
            child: Slider(
                value: sliderValue,
                activeColor: darkprimaryColor,
                inactiveColor: darkprimaryColor.withOpacity(0.3),
                onChanged: (value){
                  setState(() {
                    sliderValue=value;
                  });
                },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControls(),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}