import 'package:flutter/material.dart';
import 'package:newapp/PageV2.dart';
import 'package:newapp/PageV3.dart';
import 'package:newapp/PageV4.dart';
import 'package:newapp/PageV5.dart';
import 'package:newapp/PageV6.dart';
import 'ForScreen.dart';
import 'PageV1.dart';

class Suittap extends StatelessWidget {
  String suitname;
  Image suitimage;
  var page;

  Suittap(this.suitname, this.suitimage, this.page);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (((context) => new ForScreen(page)))));
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: EdgeInsets.all(4),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 201, 201, 201),
                      offset: Offset(1, 1),
                      blurRadius: 0,
                      spreadRadius: 2.0,
                    )
                  ],
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: suitimage),
                  ),
                  Text(
                    suitname,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )));
  }
}

class Lesson extends StatelessWidget {
  String lesson;
  Lesson(this.lesson);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color:  Color.fromARGB(255, 209, 207, 207),
      child: Center(child: Text(lesson,style: TextStyle(fontSize: 20),)),
    );
  }
}

class LessonSpecial extends StatelessWidget {
  String lesson;
  LessonSpecial(this.lesson);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color:  Color.fromARGB(255, 209, 207, 207),
      child: Center(child: Text(lesson,style: TextStyle(fontSize: 25,color: Colors.red),)),
    );
  }
}

class Suittap1 extends StatelessWidget {
  String suitname;
  Image suitimage;

  Suittap1(this.suitname, this.suitimage);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: EdgeInsets.all(4),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 201, 201, 201),
                      offset: Offset(1, 1),
                      blurRadius: 0,
                      spreadRadius: 2.0,
                    )
                  ],
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: suitimage),
                  ),
                  Text(
                    suitname,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ));
  }
}
