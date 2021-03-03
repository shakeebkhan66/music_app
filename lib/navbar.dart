import 'package:flutter/material.dart';
import 'package:music_app/colors.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarItem(
            icon: Icons.arrow_back_ios,
          ),
          Text("Playing Now", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: darkprimaryColor),),
          NavBarItem(
            icon: Icons.list,
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
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
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: darkprimaryColor,
      ),
    );
  }
}
