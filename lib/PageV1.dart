import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

//กฎการสะท้อน
class PageV1v1 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v1(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v1> createState() => _PageV1v1State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v1State extends State<PageV1v1> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v1State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//ระดับความเข้มเสียง
class PageV1v2 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v2(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v2> createState() => _PageV1v2State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v2State extends State<PageV1v2> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v2State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = (0.6 * num1!) + 331;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//คลื่นกระแทก
class PageV1v3 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v3(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v3> createState() => _PageV1v3State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v3State extends State<PageV1v3> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v3State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = 1 / num1!;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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
class PageV1v4 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v4(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v4> createState() => _PageV1v4State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v4State extends State<PageV1v4> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v4State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1! / 2;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//คาน m ทวน m ตาม
class PageV1v5 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v5(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v5> createState() => _PageV1v5State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v5State extends State<PageV1v5> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v5State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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
class PageV1v6 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v6(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v6> createState() => _PageV1v6State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v6State extends State<PageV1v6> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v6State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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
class PageV1v7 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v7(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v7> createState() => _PageV1v7State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v7State extends State<PageV1v7> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v7State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//ไฟฟ้ากระแสสลับ
class PageV1v8 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v8(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v8> createState() => _PageV1v8State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v8State extends State<PageV1v8> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v8State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1! / sqrt(2);
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//ร้อยละโดยมวล
class PageV1v9 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v9(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v9> createState() => _PageV1v9State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v9State extends State<PageV1v9> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v9State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1! *100;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//มวลอะตอม , มวลโมเลกุล
class PageV1v10 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v10(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v10> createState() => _PageV1v10State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v10State extends State<PageV1v10> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v10State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!/(1.66*pow(10, -24));
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//จำนวนโมล
class PageV1v11 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v11(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v11> createState() => _PageV1v11State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v11State extends State<PageV1v11> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v11State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!/(6.02*pow(10,23 ));
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//จำนวนโมล
class PageV1v12 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v12(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v12> createState() => _PageV1v12State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v12State extends State<PageV1v12> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v12State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = num1!/22.4;
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

//log
class PageV1v13 extends StatefulWidget {
  Image topimage1;
  Image butimage1;
  String vartext1;
  PageV1v13(this.topimage1, this.vartext1,this.butimage1);
  @override
  State<PageV1v13> createState() => _PageV1v13State(
        topimage1,
        vartext1,
        butimage1
      );
}

class _PageV1v13State extends State<PageV1v13> {
  Image topimage;
  Image butimage;
  String vartext;
  _PageV1v13State(
    this.topimage,
    this.vartext,
    this.butimage
  );
  TextEditingController variable = TextEditingController();
  double? result = 0, num1 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(height: 80, width: double.infinity, child: topimage),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vartext),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: variable,
                decoration: InputDecoration(
                    hintText: "โปรดกรอกข้อมูลของคุณ",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          variable.clear();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(variable.text);
                    result = -log(num1!);
                  });
                },
                color: Colors.orange,
                child: Text(
                  "คำนวณ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
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

