import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

// กฎการณ์แทรกสอด, พลังงานศักย์ไฟฟ้า
class PageV4v1 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v1(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v1> createState() => _PageV4v1State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v1State extends State<PageV4v1> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v1State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num3! * num4! * num2!) / num1!;
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

//กฎการแทรกสอด
class PageV4v2 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v2(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v2> createState() => _PageV4v2State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v2State extends State<PageV4v2> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v2State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = ((num1! * num2!) - (num3! * num2!)).abs() / num4!;
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

//กำลังขยาย
class PageV4v3 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v3(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v3> createState() => _PageV4v3State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v3State extends State<PageV4v3> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v3State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num1! / num2!) + (num3! / num4!);
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

//ความเร็ว, ความเร่ง
class PageV4v4 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v4(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v4> createState() => _PageV4v4State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v4State extends State<PageV4v4> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v4State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num1! - num2!) / (num3! - num4!);
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

//สมดุลต่อกาารเลื่อนที่ของวัตถุ
class PageV4v5 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v5(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v5> createState() => _PageV4v5State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v5State extends State<PageV4v5> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v5State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num1! * num2!) + (num3! * num4!);
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

//แรงและการปลี่ยนแปลงโมเมนตัม
class PageV4v6 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v6(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v6> createState() => _PageV4v6State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v6State extends State<PageV4v6> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v6State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = ((num1! * num2!) - (num1! * num3!)) / num4!;
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

//ระยะทาง
class PageV4v7 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v7(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v7> createState() => _PageV4v7State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v7State extends State<PageV4v7> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v7State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result =
                      ((num1! * num1!) * 2 * sin(num2!) * cos(num3!)) / num4!;
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

//แรงแม่เหล็กทำต่อประจุ, แรงแม่เหล็กที่กระทำกับกระแส
class PageV4v8 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v8(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v8> createState() => _PageV4v8State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v8State extends State<PageV4v8> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v8State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = num1! * num2! * num3! * sin(num4!);
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

//ประจุเคลื่อนที่เป็นวงกลม
class PageV4v9 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v9(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v9> createState() => _PageV4v9State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v9State extends State<PageV4v9> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v9State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num1! * num2!) / (num3! * num4!);
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

//แรงระหว่างสายไฟ 2 เส้น
class PageV4v10 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v10(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v10> createState() => _PageV4v10State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v10State extends State<PageV4v10> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v10State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (2 * num1! * num2! * num3!) /
                      (num4! * (10 * 10 * 10 * 10 * 10 * 10 * 10));
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

//การชนแบบไม่ยืดหยุ่น
class PageV4v11 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v11(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v11> createState() => _PageV4v11State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v11State extends State<PageV4v11> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v11State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result =
                      ((num1! * num2!) - (num3! * num4!)) / (num1! + num3!);
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

//พลังงานศักย์โน้มถ่วง
class PageV4v12 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v12(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v12> createState() => _PageV4v12State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v12State extends State<PageV4v12> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v12State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = -((num1!*num2!*num3!)/num4!);
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

//การชน 2 มิติ
class PageV4v13 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v13(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v13> createState() => _PageV4v13State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v13State extends State<PageV4v13> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v13State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = ((num1!*num2!*num3!)/(num4!*num3!));
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

//ความหนาแน่น
class PageV4v14 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v14(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v14> createState() => _PageV4v14State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v14State extends State<PageV4v14> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v14State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (num1!*num2!)/(num3!*num4!);
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

//ค่าคงที่สมดุล
class PageV4v15 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v15(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v15> createState() => _PageV4v15State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v15State extends State<PageV4v15> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v15State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = (pow((num1!), (num2!)))/(pow((num3!), (num4!)));
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

//ค่าค่งที่สมดุลความดัน
class PageV4v16 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartextF1;
  String vartextS1;
  String vartextT1;
  String vartext41;
  PageV4v16(this.topimage1, this.vartextF1, this.vartextS1, this.vartextT1,
      this.vartext41,this.butimage1);

  @override
  State<PageV4v16> createState() => _PageV4v16State(
        topimage1,
        vartextF1,
        vartextS1,
        vartextT1,
        vartext41,
        butimage1
      );
}

class _PageV4v16State extends State<PageV4v16> {
  Image topimage;
  Image butimage;
  String vartextF;
  String vartextS;
  String vartext4;
  String vartextT;
  _PageV4v16State(
    this.topimage,
    this.vartextF,
    this.vartextS,
    this.vartextT,
    this.vartext4,
    this.butimage
  );

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  TextEditingController variable3 = TextEditingController();
  TextEditingController variable4 = TextEditingController();
  double? result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;

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
                  result = num1!*(pow((num2!*num3!),num4!));
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

