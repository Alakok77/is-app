import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

//หน้าคำนวณสำหรับตัวแปรเดียว
class PageV6 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  String vartext61;
  PageV6(this.topimage1,this.vartextF1,this.vartextS1,this.vartextT1,this.vartext41,this.vartext51,this.vartext61,this.butimage1);

  @override
  State<PageV6> createState() => _PageV6State(topimage1,vartextF1,vartextS1,vartextT1,vartext41,vartext51,vartext61,butimage1);
}

class _PageV6State extends State<PageV6> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartext6;
  String vartextT;
  _PageV6State(this.topimage,this.vartextF,this.vartextS,this.vartextT,this.vartext4,this.vartext5,this.vartext6,this.butimage);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  TextEditingController variable6 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0,
      num6 = 0.0;

  calculate1V6() {
    setState(() {
      num1 = double.parse(variable1.text);
      num2 = double.parse(variable2.text);
      num3 = double.parse(variable3.text);
      num4 = double.parse(variable4.text);
      num5 = double.parse(variable5.text);
      num6 = double.parse(variable6.text);
      result = ((num1!*num2!*cos(num3!))+(num4!*num5!*cos(num3!)))/num6!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(
            height: 80,
            width: double.infinity,
            child: topimage),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextF),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable1.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextS),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable2.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextT),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable3.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext4),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable4,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable4.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext5),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable5,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable5.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext6),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable6,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable6.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              calculate1V6();
            });
          },
          color: Colors.orange,
          child: Text(
            "คำนวณ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            child: butimage),
        SizedBox(
          height: 60,
        ),
        Expanded(
            child: Container(
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text(
              '$result',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ))
      ],
    );
  }
}

class PageV6v1 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  String vartext61;
  PageV6v1(this.topimage1,this.vartextF1,this.vartextS1,this.vartextT1,this.vartext41,this.vartext51,this.vartext61,this.butimage1);

  @override
  State<PageV6v1> createState() => _PageV6v1State(topimage1,vartextF1,vartextS1,vartextT1,vartext41,vartext51,vartext61,butimage1);
}

class _PageV6v1State extends State<PageV6v1> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartext6;
  String vartextT;
  _PageV6v1State(this.topimage,this.vartextF,this.vartextS,this.vartextT,this.vartext4,this.vartext5,this.vartext6,this.butimage);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  TextEditingController variable6 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0,
      num6 = 0.0;

  calculate2V6() {
    setState(() {
      num1 = double.parse(variable1.text);
      num2 = double.parse(variable2.text);
      num3 = double.parse(variable3.text);
      num4 = double.parse(variable4.text);
      num5 = double.parse(variable5.text);
      num6 = double.parse(variable6.text);
      result = (-((num1!*num2!*num3!)/num4!))/(num5!*num6!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(
            height: 80,
            width: double.infinity,
            child: topimage),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextF),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable1.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextS),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable2.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartextT),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable3.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext4),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable4,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable4.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext5),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable5,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable5.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vartext6),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable6,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                variable6.clear();
                              },
                              icon: Icon(Icons.clear))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              calculate2V6();
            });
          },
          color: Colors.orange,
          child: Text(
            "คำนวณ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            child: butimage),
        SizedBox(
          height: 60,
        ),
        Expanded(
            child: Container(
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text(
              '$result',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ))
      ],
    );
  }
}
