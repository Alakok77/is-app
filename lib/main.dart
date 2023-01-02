import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'subject.dart';
import 'ForScreen.dart';
import 'NewScreen.dart';
import 'Mainsub.dart';
import 'NavBar.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.itimTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
          drawer: Navbar(),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            flexibleSpace: Container(
                decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 118, 114, 114),
                Color.fromARGB(255, 255, 255, 255)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            )),
            title: Text("ไม้แขวนสูตร"),
          ),
          body: ListView(
            children: [
              SizedBox(
                  height: 1000,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MathName(),
                      Math(),
                      Underline(),
                      PsysicName(),
                      Physic(),
                      Underline(),
                      ChemiName(),
                      Chemi(),
                    ],
                  )),
            ],
          )),
    );
  }
}
