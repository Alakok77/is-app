import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Chemilist.dart';
import 'package:newapp/Psysiclist.dart';
import 'subject.dart';
import 'Mathlist.dart';

class Underline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: Color.fromARGB(255, 160, 160, 160),
    );
  }
}

//ชื่อหมวด
class ChemiName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
      height: 25,
      width: 200,
      child: Row(
        children: [
          Icon(
            Icons.science,
            color: Color.fromARGB(221, 118, 114, 114),
          ),
          Text(
            "เคมี",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//ชื่อหมวด
class PsysicName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
      height: 25,
      width: 200,
      child: Row(
        children: [
          Icon(
            Icons.psychology,
            color: Color.fromARGB(221, 118, 114, 114),
          ),
          Text(
            "ฟิสิกส์",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//ชื่อหมวด
class MathName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
      height: 25,
      width: 200,
      child: Row(
        children: [
          Icon(
            Icons.calculate,
            color: Color.fromARGB(221, 118, 114, 114),
          ),
          Text(
            "คณิตศาสตร์",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//หมวดหมู่วิชาคณิตศาสตร์
class Math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        subject(
            Setlist,
            "เซต",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/set.png")),
        subject(
            Logiclist,
            "ตรรกศาสตร์",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/logic.png")),
        subject(
            Realnumlist,
            "จำนวนจริง",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/real.png")),
        subject(
            ExpoLogalist,
            "ฟังก์ชันเอกซ์โพเนนเชียล\nและฟังก์ชันลอการิทึม",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/expo.png")),
        subject(
            Geometrylist,
            "เรขาคณิตวิเคราะห์และภาคตัดกรวย",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/geo.png")),
        subject(
            Countlist,
            "หลักการนับเบื้องต้น",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset(
                'images/count.png')),
        subject(
            Probabilitylist,
            "ความน่าจะเป็น",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset(
                'images/pro.png')),
        subject(
            Trigonlist,
            "ฟังก์ชันตรีโกณมิติ",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset("images/tri.png")),
        subject(
            Complexlist,
            "จำนวนเชิงซ้อน",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset(
                'images/com.png')),
        subject(
            Powlist,
            "เลขยกกกำลัง",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset(
                'images/pow.png')),
        subject(
            Sequenlist,
            "ลำดับและอนุกรม",
            Color.fromARGB(255, 239, 63, 63),
            Color.fromARGB(255, 231, 154, 214),
            Image.asset(
                'images/seq.png')),
      ],
    ));
  }
}

//หมวดหมู่วิชาฟิสิกส์
class Physic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        subject(
            wavelist,
            "คลื่น",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/wave.png')),
        subject(
            voiselist,
            "คลื่นเสียง",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/voise.png')),
        subject(
            Lightlist,
            "แสง",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/li.png')),
        subject(
            Simplelist,
            "ซิมเปิลฮาร์มอนิก",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/shm.png')),
        subject(
            ForceList,
            "แรงและกฎการเคลื่อนที่",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/force.png')),
        subject(
            Balancelist,
            "สมดุลกล",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/ba.png')),
        subject(
            Powerlist,
            "งานและพลังงาน",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/work.png')),
        subject(
            Momentunlist,
            "โมเมนตัมและการชน",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/moment.png')),
        subject(
            Projectite,
            "การเคลื่อนที่แนวโค้ง",
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/project.png')),
        subject(
            Electriclist,
            'ไฟฟ้า',
            Color.fromARGB(255, 242, 167, 82),
            Color.fromARGB(255, 156, 220, 147),
            Image.asset(
                'images/elec.png')),
      ],
    ));
  }
}

//หมวดหมู่วิชาเคมี
class Chemi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        subject(
           Molegul,
            "โมลและสูตรเคมี",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset(
                'images/mol.png')),
        subject(
            Solutionlist,
            "สารละลาย",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset('images/chem.png')),
        subject(
            Stoichiometry,
            "ปริมาณสารสัมพันธ์",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset(
                'images/sto.png')),
        subject(
            Gaslist,
            "แก๊สและสมบัติของแก๊ส",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset(
                'images/gas.png')),
        subject(
            Reactionlist,
            "อัตราการเกิดปฏิกิริยาเคมี",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset("images/ch.png")),
        subject(
            BalanceChemilist,
            "สมดุลเคมี",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset("images/che.png")),
        subject(
            AcidBaselist,
            "กรด-เบส",
            Color.fromARGB(255, 102, 183, 226),
            Color.fromARGB(255, 203, 135, 235),
            Image.asset(
                'images/acid.png')),
      ],
    ));
  }
}
