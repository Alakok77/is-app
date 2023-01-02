import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/Psysiclist.dart';
import 'NewScreen.dart';

class subject extends StatelessWidget {
  String subname;
  Color color1;
  Color color2 ;
  Image image ;
  var page ;

  subject(this.page,this.subname, this.color1,this.color2,this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (((context) => NewScreen(page,subname)))));
        },
        child: Container(
          width: 250,
          height: 250,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [color1,color2] ,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 218, 213, 213),
                  offset: Offset(7, 7),
                  blurRadius: 0,
                  spreadRadius: 4.0,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subname,
                style: TextStyle(fontSize: 18),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Expanded(child: image)),
            ],
          ),
        ),
      )),
    );
  }
}
