import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

//กฎการแทรกสอด
class PageV5v1 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v1(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v1> createState() => _PageV5v1State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v1State extends State<PageV5v1> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v1State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result =
                  ((((num1! * num2!) - (num3! * num2!)).abs()) * num4!) / num5!;
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
        Container(child: butimage),
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

//กระดานกระโดดน้ำ
class PageV5v2 extends StatefulWidget {
  Image topimage1;
   Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v2(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v2> createState() => _PageV5v2State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
          butimage1
      );
}

class _PageV5v2State extends State<PageV5v2> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v2State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((num1! * num2!) + (num3! * num4!)) / num5!;
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
        Container(child: butimage),
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

//บันไดพาดกำแพงเกลี้ยง
class PageV5v3 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v3(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v3> createState() => _PageV5v3State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v3State extends State<PageV5v3> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v3State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((num1! * (num2! * cos(num3!))) +
                      (num4! * (num5! * cos(num3!)))) /
                  num5! *
                  sin(num3!);
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
        Container(child: butimage),
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

//การชน 1 มิติ
class PageV5v4 extends StatefulWidget {
  Image topimage1;
    Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v4(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v4> createState() => _PageV5v4State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v4State extends State<PageV5v4> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v4State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = (((num1! * num2!) + (num3! * num4!)) - (num3! * num5!)) /
                  num1!;
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
        Container(child: butimage),
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

//การชนยืดหยุ่น 2 มิติ x
class PageV5v5 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v5(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v5> createState() => _PageV5v5State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v5State extends State<PageV5v5> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v5State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
     this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((num1! * num2! * cos(num3!)) +
                      (num4! * num5! * cos(num3!))) /
                  num1!;
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
        Container(child: butimage),
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

//การชนยืดหยุ่น 2 มิติ y
class PageV5v6 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v6(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v6> createState() => _PageV5v6State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v6State extends State<PageV5v6> {
  Image topimage;
   Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v6State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage

  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((num1! * num2! * sin(num3!)) -
                      (num4! * num5! * sin(num3!))) /
                  num1!;
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
        Container(child: butimage),
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

//การระเบิด 1 มิติ
class PageV5v7 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v7(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v7> createState() => _PageV5v7State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v7State extends State<PageV5v7> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v7State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((num1! * num2!) - (num3! * (-num4!))) / num5!;
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
        Container(child: butimage),
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

//กฎรวมแก๊ส
class PageV5v8 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v8(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v8> createState() => _PageV5v8State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v8State extends State<PageV5v8> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v8State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = (((num3!*num4!)/num5!)*num2!)/num1!;
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
        Container(child: butimage),
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

//การแพร่ของแก๊ส
class PageV5v9 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  String vartext51;
  PageV5v9(
    this.topimage1,
    this.vartextF1,
    this.vartextS1,
    this.vartextT1,
    this.vartext41,
    this.vartext51,
    this.butimage1
  );

  @override
  State<PageV5v9> createState() => _PageV5v9State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        vartext51,
        butimage1
      );
}

class _PageV5v9State extends State<PageV5v9> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartext5;
  String vartextT;
  _PageV5v9State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.vartext5,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  TextEditingController variable5 = TextEditingController();
  double? result = 0.0,
      num1 = 0.0,
      num2 = 0.0,
      num3 = 0.0,
      num4 = 0.0,
      num5 = 0.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
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
              Container(
                width: 10,
                height: 10,
              ),
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              num3 = double.parse(variable3.text);
              num4 = double.parse(variable4.text);
              num5 = double.parse(variable5.text);
              result = ((sqrt(num1!/num2!))-(sqrt(num3!/num4!)))*num5!;
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
        Container(child: butimage),
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

