import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

//การหักเห, อัตราส่วนน้ำหนักมวลสองก้อน, ความต้านทานในตัวนำ
//ชาร์ล , เกย์ , อาโวกราโด
class PageV3v1 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v1(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v1> createState() =>
      _PageV3v1State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v1State extends State<PageV3v1> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v1State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
            setState(() {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num2! / num3!) * num1!;
                });
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

//การแทรกสอด, กำลัง, ศักย์ไฟฟ้า
//บอยล์ 
class PageV3v2 extends StatefulWidget {
  Image topimage1;
   Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v2(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v2> createState() =>
      _PageV3v2State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v2State extends State<PageV3v2> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v2State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num2! * num3!) / num1!;
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

//ระดับความเข้มแสง, อัตราส่วนความถี่สปริง, อัตราส่วนคาบสปริง, อัตราส่วนความถีลูกตุ้ม, อัตราส่วนคาบลูกตุ้ม
class PageV3v3 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v3(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v3> createState() =>
      _PageV3v3State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v3State extends State<PageV3v3> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v3State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (sqrt(num2! / num3!)) * num1!;
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

//เมื่อ R คงที่
class PageV3v4 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v4(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v4> createState() =>
      _PageV3v4State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v4State extends State<PageV3v4> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v4State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (10 * (log(num2! / num3!))) + num1!;
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

//เมื่อ P คงที่
class PageV3v5 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v5(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v5> createState() =>
      _PageV3v5State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v5State extends State<PageV3v5> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v5State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (20 * (log(num2! / num3!))) + num1!;
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

//การกระจัด x
class PageV3v6 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v6(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v6> createState() =>
      _PageV3v6State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v6State extends State<PageV3v6> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v6State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * (cos(num2! * num3!));
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

//ความเร็ว x
class PageV3v7 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v7(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v7> createState() =>
      _PageV3v7State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v7State extends State<PageV3v7> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v7State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = -num1! * num2! * (sin(num1! * num3!));
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

//ความเร็ว x , y
class PageV3v8 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v8(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v8> createState() =>
      _PageV3v8State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v8State extends State<PageV3v8> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v8State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * (sqrt((num2! * num2!) - (num3! * num3!)));
                  result = -num1! * (sqrt((num2! * num2!) - (num3! * num3!)));
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

//ความเร่ง x
class PageV3v9 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v9(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v9> createState() =>
      _PageV3v9State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v9State extends State<PageV3v9> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v9State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = -((num1! * num1!) * num2! * cos(num1! * num3!));
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

//การกระจัด y, ไฟฟ้ากระแสสลับ
class PageV3v10 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v10(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v10> createState() =>
      _PageV3v10State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v10State extends State<PageV3v10> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v10State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * sin(num2! * num3!);
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

//ความเร็ว y
class PageV3v11 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v11(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v11> createState() =>
      _PageV3v11State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v11State extends State<PageV3v11> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v11State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * num2! * cos(num1! * num3!);
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

//ความเร่ง y
class PageV3v12 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v12(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1 ,this.butimage1);
  @override
  State<PageV3v12> createState() =>
      _PageV3v12State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v12State extends State<PageV3v12> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v12State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = -((num1! * num1!) * num2! * sin(num1! * num3!));
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

//ความเร็ว
class PageV3v13 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v13(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v13> createState() =>
      _PageV3v13State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v13State extends State<PageV3v13> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v13State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! + (num2! * num3!);
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
        Container(child:butimage),
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

//ระยะทาง, ความสูง
class PageV3v14 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v14(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v14> createState() =>
      _PageV3v14State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v14State extends State<PageV3v14> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v14State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num1! + num2!) / 2) * num3!;
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

//ระยะทาง, ความสูง
class PageV3v15 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v15(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v15> createState() =>
      _PageV3v15State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v15State extends State<PageV3v15> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v15State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! * num2!) + ((num3! * (num2! * num2!)) / 2);
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

//ระยะทาง, ความสูง
class PageV3v16 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v16(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v16> createState() =>
      _PageV3v16State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v16State extends State<PageV3v16> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v16State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
     this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! * num2!) - ((num3! * (num2! * num2!)) / 2);
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

//ความเร็ว
class PageV3v17 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v17(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v17> createState() =>
      _PageV3v17State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v17State extends State<PageV3v17> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v17State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = sqrt((num1! * num1!) + (2 * num2! * num3!));
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

//แรงดึงดูดระหว่างมวล,
class PageV3v18 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v18(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v18> createState() =>
      _PageV3v18State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v18State extends State<PageV3v18> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v18State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
     this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (9.8 * (num1! * num2!)) / (num3! * num3!);
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

//สนาม(แรงต่อประจุ)
class PageV3v19 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v19(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v19> createState() =>
      _PageV3v19State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v19State extends State<PageV3v19> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v19State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (9000000000 * (num1! * num2!)) / (num3! * num3!);
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

//อัตราส่วนความเร่งกับระยะห่างวัตถุ
class PageV3v20 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v20(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v20> createState() =>
      _PageV3v20State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v20State extends State<PageV3v20> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v20State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num2! / num3!) * (num2! / num3!)) * num1!;
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

//อัตราส่วนความเร่งกับระยะห่างวัตถุ
class PageV3v21 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v21(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v21> createState() =>
      _PageV3v21State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v21State extends State<PageV3v21> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v21State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result =
                      (((num2! + num3!) / num2!) * ((num2! + num3!) / num2!)) *
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

//วัตถุขึ้น
class PageV3v22 extends StatefulWidget {
  Image topimage1;
   Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v22(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v22> createState() =>
      _PageV3v22State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v22State extends State<PageV3v22> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v22State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! - (num2! * num3!)) / num2!;
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

//วัตถุลง
class PageV3v23 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v23(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v23> createState() =>
      _PageV3v23State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v23State extends State<PageV3v23> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v23State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num1! * num2!) - num3!) / num1!;
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

//สมดุลต่อการเลื่อนที่, คาน, กำลัง
//การเตรียมสารละลาย
class PageV3v24 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v24(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v24> createState() =>
      _PageV3v24State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v24State extends State<PageV3v24> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v24State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! * num2!) / num3!;
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

//โมเมนของแรง
class PageV3v25 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v25(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v25> createState() =>
      _PageV3v25State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v25State extends State<PageV3v25> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v25State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
     this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * num2! * sin(num3!);
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

//โมเมนของแรง
class PageV3v26 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v26(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v26> createState() =>
      _PageV3v26State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v26State extends State<PageV3v26> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v26State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * num2! * cos(num3!);
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

//คานกระโดดน้ำ
class PageV3v27 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v27(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v27> createState() =>
      _PageV3v27State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v27State extends State<PageV3v27> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v27State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! + num2! + num3!;
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
class PageV3v28 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v28(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v28> createState() =>
      _PageV3v28State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v28State extends State<PageV3v28> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v28State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! - (num2! * num3!);
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

//การผลักกล่อง
class PageV3v29 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v29(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v29> createState() =>
      _PageV3v29State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v29State extends State<PageV3v29> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v29State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num2! * num3! * 2) / num1!;
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

//งาน
class PageV3v30 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v30(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v30> createState() =>
      _PageV3v30State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v30State extends State<PageV3v30> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v30State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1!.abs() * num2!.abs() * cos(num3!);
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

//พลังงานศักโน้มถ่วง
class PageV3v31 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v31(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v31> createState() =>
      _PageV3v31State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v31State extends State<PageV3v31> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v31State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1! * num2! * num3!;
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

//การเปลี่ยนแปลงโมเมนตัม, การดล
class PageV3v32 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v32(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v32> createState() =>
      _PageV3v32State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v32State extends State<PageV3v32> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v32State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! * num2!) - (num1! * num3!);
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

//เวลา
class PageV3v33 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v33(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v33> createState() =>
      _PageV3v33State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v33State extends State<PageV3v33> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v33State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1! * sin(num2!)) / num3!;
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

//เวลา
class PageV3v34 extends StatefulWidget {
  Image topimage1;
   Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v34(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v34> createState() =>
      _PageV3v34State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v34State extends State<PageV3v34> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v34State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (2 * num1! * sin(num2!)) / num3!;
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

//ความสูง
class PageV3v35 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v35(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v35> createState() =>
      _PageV3v35State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v35State extends State<PageV3v35> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v35State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result =
                      ((num1! * num1!) * ((sin(num2!)) * sin(num2!))) / num3!;
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

//ต่ออนุกรม
class PageV3v36 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v36(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v36> createState() =>
      _PageV3v36State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v36State extends State<PageV3v36> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v36State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = sqrt(
                      (num1! * num1!) + ((num2! - num3!) * (num2! - num3!)));
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

//สนาม(แรงต่อประจุ)
class PageV3v37 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v37(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v37> createState() =>
      _PageV3v37State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v37State extends State<PageV3v37> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v37State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
     this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num1! * num2!)) / (num3! * num3!);
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

//กำลัง
class PageV3v38 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v38(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v38> createState() =>
      _PageV3v38State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v38State extends State<PageV3v38> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v38State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num1!*num2!)*num3!)/num1!;
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

//ความเข้มข้น
class PageV3v39 extends StatefulWidget {
  Image topimage1;
   Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v39(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v39> createState() =>
      _PageV3v39State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v39State extends State<PageV3v39> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v39State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = ((num1!*num2!)/num3!)*10;
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

//เศษส่วนโมลของสาร
class PageV3v40 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v40(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v40> createState() =>
      _PageV3v40State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v40State extends State<PageV3v40> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v40State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1!/(num1!+num2!+num3!);
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

//ลำดับเลขคณิต
class PageV3v41 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v41(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v41> createState() =>
      _PageV3v41State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v41State extends State<PageV3v41> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v41State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1!+((num2!-1)*num3!);
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

//ลำดับเรขาคณิต
class PageV3v42 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v42(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v42> createState() =>
      _PageV3v42State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v42State extends State<PageV3v42> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v42State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = num1!*(pow(num2!,num3!-1));
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

//อนุกรมเลขคณิต
class PageV3v43 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  PageV3v43(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,this.butimage1);
  @override
  State<PageV3v43> createState() =>
      _PageV3v43State(topimage1, vartextF1, vartextS1, vartextT1,butimage1);
}

class _PageV3v43State extends State<PageV3v43> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartextT;
  _PageV3v43State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0;
  double wait = 0;

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
        MaterialButton(
          onPressed: () {
                setState(() {
                  num1 = double.parse(variable1.text);
                  num2 = double.parse(variable2.text);
                  num3 = double.parse(variable3.text);
                  result = (num1!/2)*((2*num2!)+((num1!-1)*num3!));
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
