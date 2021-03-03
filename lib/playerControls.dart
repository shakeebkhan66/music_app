import 'package:flutter/material.dart';
import 'package:music_app/colors.dart';

class PlayerControls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Controls(icon: Icons.repeat,),
          Controls(icon: Icons.skip_previous,),
        PlayControl(),  Controls(icon: Icons.skip_next,),
          Controls(icon: Icons.shuffle,),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkprimaryColor.withOpacity(0.5),
            offset: Offset(5,10),
            spreadRadius: 2,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3,-4),
            spreadRadius: -2,
            blurRadius: 20,
          )
        ],
      ),
      child:  Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: darkprimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Icon(Icons.play_arrow, size: 50, color: darkprimaryColor,)),
            ),
          ),
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget{

  final IconData icon;

  const Controls({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: darkprimaryColor.withOpacity(0.5),
              offset: Offset(5,10),
              spreadRadius: 2,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-3,-4),
              spreadRadius: -2,
              blurRadius: 20,
            )
          ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: darkprimaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: darkprimaryColor.withOpacity(0.5),
                    offset: Offset(5,10),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-3,-4),
                    spreadRadius: -2,
                    blurRadius: 20,
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Icon(icon, size: 30, color: darkprimaryColor,)),
            ),
          ),
        ],
      ),
    );
  }
}