import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ForScreen.dart';
import 'Fortap.dart';
import 'Psysiclist.dart';



class NewScreen extends StatelessWidget{
  String text;
  var list;
  NewScreen(this.list,this.text);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 118, 114, 114),Color.fromARGB(255, 255, 255, 255)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter ),
              ) ),
        title: Text(text),
      ),
      body: ListView(
        children: list
      )
    );
  }
}

