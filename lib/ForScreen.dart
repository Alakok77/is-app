import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PageV1.dart';

class ForScreen extends StatefulWidget{
  var what1;
  ForScreen(this.what1);
  @override
  _ForScreenState createState() => _ForScreenState(what1);
}

class _ForScreenState extends State<ForScreen>{
  var whatpage;
  _ForScreenState(this.whatpage);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 255, 255, 255),Colors.black],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter ),
              ) ),
          title: Text("กลับ"),
          ),
          body: whatpage
          );
  }

}


