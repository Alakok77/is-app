import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

//อัตราเร็วคลื่น,ระยะทางในการเคลื่อนที่,ความเร็วสูงสุด x, แรง, น้ำหนัก, ลวดเหนี่ยวนำ
//โมเมนของแรง, การผลักกล่อง, งาน, กำลัง, โมเมนตัม, การดล, ระยะทาง, แผ่นคู่ขนาน, ตัวเก็บประจุ
//มวลโมเลกุล, จำนวนโมลรวม, จำนวนโมล
class PageV2v1 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v1(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v1> createState() => PageV2v1State(pic1, text11, text22, pict2);
}

class PageV2v1State extends State<PageV2v1> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v1State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(
            height: 80, width: 80, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! * num2!;
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
        Container(child: pict),
        SizedBox(
          height: 60,
        ),
        Expanded(
            child: Container(
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text(
              "$result",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ))
      ],
    );
  }
}

//ความยาวคลื่น,ความถี่คลื่น,อัตราเร็วคลื่น,เวลาที่ใช้ในการเคลื่อนที่, กำลัง, สนาม,
//ตัวเก็บประจุ, ความสว่าง, กระแสไฟฟ้า, ตัวต้านทาน, กำลังไฟฟ้า
//จำนวนโมล
class PageV2v2 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v2(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v2> createState() => PageV2v2State(pic1, text11, text22, pict2);
}

class PageV2v2State extends State<PageV2v2> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v2State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! / num2!;
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
        Container(child: pict),
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

//ปรากฎการณ์บีสต์
class PageV2v3 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v3(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v3> createState() => PageV2v3State(pic1, text11, text22, pict2);
}

class PageV2v3State extends State<PageV2v3> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v3State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              wait = num1! - num2!;
              result = wait!.abs();
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
        Container(child: pict),
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

//ปรากฎการณ์บีสต์
class PageV2v4 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v4(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v4> createState() => PageV2v4State(pic1, text11, text22, pict2);
}

class PageV2v4State extends State<PageV2v4> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v4State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! + num2!) / 2;
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
        Container(child: pict),
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

//ความยาวโฟกัส
class PageV2v5 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v5(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v5> createState() => PageV2v5State(pic1, text11, text22, pict2);
}

class PageV2v5State extends State<PageV2v5> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v5State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              wait = (1 / num1!) + (1 / num2!);
              result = 1 / wait!;
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
        Container(child: pict),
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

//ความยาวโฟกัส
class PageV2v6 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v6(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v6> createState() => PageV2v6State(pic1, text11, text22, pict2);
}

class PageV2v6State extends State<PageV2v6> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v6State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! / (num2! - num1!);
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
        Container(child: pict),
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

//ความสว่าง
class PageV2v7 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v7(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v7> createState() => PageV2v7State(pic1, text11, text22, pict2);
}

class PageV2v7State extends State<PageV2v7> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v7State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! / (num2! * num2!);
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
        Container(child: pict),
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

//ความเร่ง x , ความเร่ง y
class PageV2v8 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v8(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v8> createState() => PageV2v8State(pic1, text11, text22, pict2);
}

class PageV2v8State extends State<PageV2v8> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v8State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = -1 * (num1! * num1!) * num2!;
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
        Container(child: pict),
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

//ความเร่งสูงสุด x, กำลังไฟฟ้า
class PageV2v9 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v9(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v9> createState() => PageV2v9State(pic1, text11, text22, pict2);
}

class PageV2v9State extends State<PageV2v9> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v9State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * num1!) * num2!;
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
        Container(child: pict),
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

//ความถี่มวลติดสปริง, ความถี่ลูกตุ้ม
class PageV2v10 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v10(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v10> createState() => PageV2v10State(pic1, text11, text22, pict2);
}

class PageV2v10State extends State<PageV2v10> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v10State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (1 / (2 * 3.14)) * (sqrt(num1! / num2!));
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
        Container(child: pict),
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

//คาบปลายสปริง, คาบลูกตุ้ม
class PageV2v11 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v11(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v11> createState() => PageV2v11State(pic1, text11, text22, pict2);
}

class PageV2v11State extends State<PageV2v11> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v11State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (2 * 3.14) * (sqrt(num1! / num2!));
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
        Container(child: pict),
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

//แรงบน=ล่าง, สมดุลของวัตถุพื้นเอียง
class PageV2v12 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v12(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v12> createState() => PageV2v12State(pic1, text11, text22, pict2);
}

class PageV2v12State extends State<PageV2v12> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v12State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! * (cos(num2!));
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
        Container(child: pict),
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

//แรงซ้าย=ขวา, สมดุลของวุตถุพื้นเอียง
class PageV2v13 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v13(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v13> createState() => PageV2v13State(pic1, text11, text22, pict2);
}

class PageV2v13State extends State<PageV2v13> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v13State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! * (sin(num2!));
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
        Container(child: pict),
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

//บันไดกำแพง
class PageV2v14 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v14(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v14> createState() => PageV2v14State(pic1, text11, text22, pict2);
}

class PageV2v14State extends State<PageV2v14> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v14State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! + num2!;
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
        Container(child: pict),
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

//พลังงานจลน์, กำลัง
class PageV2v15 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v15(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v15> createState() => PageV2v15State(pic1, text11, text22, pict2);
}

class PageV2v15State extends State<PageV2v15> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v15State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * (num2! * num2!)) / 2;
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
        Container(child: pict),
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

//อัตราส่วนความสูงตอ่ระยะทาง
class PageV2v16 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v16(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v16> createState() => PageV2v16State(pic1, text11, text22, pict2);
}

class PageV2v16State extends State<PageV2v16> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v16State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (tan(num1!) / 4) * num2!;
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
        Container(child: pict),
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

//พลังงานสะสมในตัวเก็บประจุ
class PageV2v17 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v17(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v17> createState() => PageV2v17State(pic1, text11, text22, pict2);
}

class PageV2v17State extends State<PageV2v17> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v17State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * num2!) / 2;
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
        Container(child: pict),
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

//กำลังไฟฟ้า
class PageV2v18 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v18(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v18> createState() => PageV2v18State(pic1, text11, text22, pict2);
}

class PageV2v18State extends State<PageV2v18> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v18State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * num1!) / num2!;
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
        Container(child: pict),
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

//ตัวเก็บประจุ
class PageV2v19 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v19(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v19> createState() => PageV2v19State(pic1, text11, text22, pict2);
}

class PageV2v19State extends State<PageV2v19> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v19State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = 1 / (num1! * num2!);
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
        Container(child: pict),
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

//ความเข้มเสียง
class PageV2v20 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v20(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v20> createState() => PageV2v20State(pic1, text11, text22, pict2);
}

class PageV2v20State extends State<PageV2v20> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v20State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = num1! / (4 * 3.14 * (num2! * num2!));
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
        Container(child: pict),
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

//กฎการอนุรักษ์โมเมนตัม
class PageV2v21 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v21(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v21> createState() => PageV2v21State(pic1, text11, text22, pict2);
}

class PageV2v21State extends State<PageV2v21> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v21State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * num2!) / num1!;
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
        Container(child: Image.asset("images/waveX.png")),
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

//ต่อขนาน
class PageV2v22 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v22(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v22> createState() => PageV2v22State(pic1, text11, text22, pict2);
}

class PageV2v22State extends State<PageV2v22> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v22State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = sqrt((1 / 4) +
                  (((1 / num1!) - (1 / num2!)) * ((1 / num1!) - (1 / num2!))));
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
        Container(child: pict),
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

//100โดยมวล , 100โดยปริมาตร , 100โดยมวล/ปริมาตร
class PageV2v23 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v23(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v23> createState() => PageV2v23State(pic1, text11, text22, pict2);
}

class PageV2v23State extends State<PageV2v23> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v23State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! / num2!) * 100;
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
        Container(child: pict),
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

//จำนวนโมล
class PageV2v24 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v24(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v24> createState() => PageV2v24State(pic1, text11, text22, pict2);
}

class PageV2v24State extends State<PageV2v24> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v24State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! * num2!) / 1000;
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
        Container(child: pict),
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
class PageV2v25 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v25(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v25> createState() => PageV2v25State(pic1, text11, text22, pict2);
}

class PageV2v25State extends State<PageV2v25> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v25State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! / num2!) * 10;
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
        Container(child: pict),
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

//ส่วนในล้านส่วน
class PageV2v26 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v26(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v26> createState() => PageV2v26State(pic1, text11, text22, pict2);
}

class PageV2v26State extends State<PageV2v26> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v26State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! / num2!) * pow(10, 6);
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
        Container(child: Image.asset("images/waveX.png")),
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

//ส่วนในพันล้านส่วน
class PageV2v27 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v27(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v27> createState() => PageV2v27State(pic1, text11, text22, pict2);
}

class PageV2v27State extends State<PageV2v27> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v27State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (num1! / num2!) * pow(10, 9);
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
        Container(child: pict),
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

//อัตราการลดลงของสารตั้งต้น
class PageV2v28 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v28(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v28> createState() => PageV2v28State(pic1, text11, text22, pict2);
}

class PageV2v28State extends State<PageV2v28> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v28State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = -(num1!) / (num2!);
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
        Container(child: pict),
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

//ค่าคงที่สมดุลความดัน
class PageV2v29 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v29(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v29> createState() => PageV2v29State(pic1, text11, text22, pict2);
}

class PageV2v29State extends State<PageV2v29> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v29State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = ((num1!) * (num1!)) / num2!;
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
        Container(child: pict),
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

//การแตกตัวของกรดอ่อน
class PageV2v30 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v30(this.pic1, this.text11, this.text22, this.pict2);
  @override
  State<PageV2v30> createState() => PageV2v30State(pic1, text11, text22, pict2);
}

class PageV2v30State extends State<PageV2v30> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v30State(this.pic, this.text1, this.text2, this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = ((num1!) * (num2!)) / num2!;
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
        Container(child: pict),
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

//การแตกตัวของกรดอ่อน
class PageV2v31 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v31(this.pic1, this.text11, this.text22,this.pict2);
  @override
  State<PageV2v31> createState() => PageV2v31State(pic1, text11, text22,pict2);
}

class PageV2v31State extends State<PageV2v31> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v31State(this.pic, this.text1, this.text2 ,this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = sqrt(num1! * num2!);
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
        Container(child: pict),
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

//ร้อยละการแตกตัวของกรด
class PageV2v32 extends StatefulWidget {
  Image pic1;
  Image pict2;
  String text11;
  String text22;
  PageV2v32(this.pic1, this.text11, this.text22,this.pict2);
  @override
  State<PageV2v32> createState() => PageV2v32State(pic1, text11, text22,pict2);
}

class PageV2v32State extends State<PageV2v32> {
  Image pic;
  Image pict;
  String text1;
  String text2;
  PageV2v32State(this.pic, this.text1, this.text2,this.pict);

  TextEditingController variable1 = TextEditingController();
  TextEditingController variable2 = TextEditingController();
  double? wait = 0, result = 0, num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: pic),
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable1,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
                    Text(text2),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: variable2,
                      decoration: InputDecoration(
                          hintText: "โปรดกรอกข้อมูลของคุณ",
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
            ],
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              num1 = double.parse(variable1.text);
              num2 = double.parse(variable2.text);
              result = (sqrt(num1! / num2!)) * 100;
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
        Container(child: pict),
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
