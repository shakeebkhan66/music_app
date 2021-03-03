import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/colors.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 240,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRRect(
        /// A widget that clips its child using a rectangle. By default,
        /// ClipRect prevents its child from painting outside its bounds,
        /// but the size and location of the clip rect can be customized using a custom clipper.
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(20, 15),
            bottomRight: Radius.elliptical(20, 15),
            topRight: Radius.elliptical(20, 15),
            bottomLeft: Radius.elliptical(20, 15)),
        child: Image.asset(
          "images/music.jpg",
          fit: BoxFit.fill,
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: darkprimaryColor,
          offset: Offset(20, 8),
          spreadRadius: 3,
          blurRadius: 25,
        ),
        BoxShadow(
          color: Colors.white,
          offset: Offset(-3, -4),
          spreadRadius: -2,
          blurRadius: 20,
        )
      ], color: primaryColor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
