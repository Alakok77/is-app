import 'package:flutter/material.dart';
import 'package:newapp/Pagepicture.dart';
import 'Fortap.dart';
import 'PageV1.dart';
import 'PageV2.dart';
import 'PageV3.dart';
import 'PageV4.dart';
import 'PageV5.dart';
import 'PageV6.dart';

List<Widget> Setlist = [
  Suittap1('', Image.asset('images/set1.png')),
  Suittap1('', Image.asset('images/set2.png')),
  Suittap1('', Image.asset('images/set3.png')),
  Suittap1('', Image.asset('images/set4.png')),
  Suittap1('', Image.asset('images/set5.png')),
  Suittap1('', Image.asset('images/set6.png')),
  Suittap1('', Image.asset('images/set7.png')),
  Suittap1('', Image.asset('images/set8.png')),
  Suittap1('', Image.asset('images/set9.png')),
  Suittap1('', Image.asset('images/set10.png')),
  Suittap1('', Image.asset('images/set11.png')),
  Suittap1('', Image.asset('images/set12.png')),
  Suittap1('', Image.asset('images/set13.png')),
  Lesson("สมบัติของเพาเวอร์เซต"),
  Suittap1('', Image.asset('images/set14.png')),
  Suittap1('', Image.asset('images/set15.png')),
  Suittap1('', Image.asset('images/set16.png')),
  Suittap1('', Image.asset('images/set17.png')),
  Suittap1('', Image.asset('images/set18.png')),
  Suittap1('', Image.asset('images/set19.png')),
  Lesson("ยูเนียน"),
  Suittap1('', Image.asset('images/set20.png')),
  Suittap1('', Image.asset('images/set21.png')),
  Suittap1('', Image.asset('images/set22.png')),
  Suittap1('', Image.asset('images/set23.png')),
  Suittap1('', Image.asset('images/set24.png')),
  Suittap1('', Image.asset('images/set25.png')),
  Suittap1('', Image.asset('images/set26.png')),
  Suittap1('', Image.asset('images/set27.png')),
  Suittap1('', Image.asset('images/set28.png')),
  Lesson("อินเตอร์เซคชัน"),
  Suittap1('', Image.asset('images/set29.png')),
  Suittap1('', Image.asset('images/set30.png')),
  Suittap1('', Image.asset('images/set31.png')),
  Suittap1('', Image.asset('images/set32.png')),
  Suittap1('', Image.asset('images/set33.png')),
  Suittap1('', Image.asset('images/set34.png')),
  Suittap1('', Image.asset('images/set35.png')),
  Suittap1('', Image.asset('images/set36.png')),
  Suittap1('', Image.asset('images/set37.png')),
  Lesson('คอมพลีเมนต์'),
  Suittap1('', Image.asset('images/set38.png')),
  Suittap1('', Image.asset('images/set39.png')),
  Suittap1('', Image.asset('images/set40.png')),
  Suittap1('', Image.asset('images/set41.png')),
  Suittap1('', Image.asset('images/set42.png')),
  Suittap1('', Image.asset('images/set43.png')),
  Suittap1('', Image.asset('images/set44.png')),
  Suittap1('', Image.asset('images/set45.png')),
  Lesson('คอมพลีเมนต์'),
  Suittap1('', Image.asset('images/set46.png')),
  Suittap1('', Image.asset('images/set47.png')),
  Suittap1('', Image.asset('images/set48.png')),
  Suittap1('', Image.asset('images/set49.png')),
  Suittap1('', Image.asset('images/set50.png')),
  Suittap1('', Image.asset('images/set51.png')),
  Suittap1('', Image.asset('images/set52.png')),
  Suittap1('', Image.asset('images/set53.png')),
];

List<Widget> Logiclist = [
  Suittap("", Image.asset("images/lo1.png"),
      Pagepicture(Image.asset("images/logical.png"))),
  LessonSpecial("สมบัติการสมมูล"),
  Lesson("สมบัติการสลับที่"),
  Suittap1("", Image.asset("images/lo3.png")),
  Suittap1("", Image.asset("images/lo2.png")),
  Suittap1("", Image.asset("images/lo4.png")),
  Lesson("สมบัติการเปลี่ยนกลุ่ม"),
  Suittap1("", Image.asset("images/lo5.png")),
  Suittap1("", Image.asset("images/lo6.png")),
  Suittap1("", Image.asset("images/lo7.png")),
  Lesson("สมบัติการแจกแจง"),
  Suittap1("", Image.asset("images/lo8.png")),
  Suittap1("", Image.asset("images/lo9.png")),
  Suittap1("", Image.asset("images/lo10.png")),
  Suittap1("", Image.asset("images/lo11.png")),
  Suittap1("", Image.asset("images/lo12.png")),
  Suittap1("", Image.asset("images/lo13.png")),
  Lesson("สมบัติของ ถ้า…แล้ว ( → )"),
  Suittap1("", Image.asset("images/lo14.png")),
  Lesson("สมบัติของ ก็ต่อเมื่อ ( ↔ )"),
  Suittap1("", Image.asset("images/lo15.png")),
  Lesson("สมบัติของ นิเสธ ( ~ )"),
  Suittap1("", Image.asset("images/lo16.png")),
  Suittap1("", Image.asset("images/lo17.png")),
  Suittap1("", Image.asset("images/lo18.png")),
  Suittap1("", Image.asset("images/lo19.png")),
  Suittap1("", Image.asset("images/lo20.png")),
  Lesson("สมบัติอื่น ๆ "),
  Suittap1("", Image.asset("images/lo21.png")),
  Suittap1("", Image.asset("images/lo22.png")),
  Suittap1("", Image.asset("images/lo23.png")),
  Suittap1("", Image.asset("images/lo24.png")),
  Suittap1("", Image.asset("images/lo25.png")),
  Suittap1("", Image.asset("images/lo26.png")),
  Suittap1("", Image.asset("images/lo27.png")),
  Suittap1("", Image.asset("images/lo28.png")),
  Suittap1("", Image.asset("images/lo29.png")),
  Suittap1("", Image.asset("images/lo30.png")),
  Suittap1("", Image.asset("images/lo31.png")),
  Suittap1("", Image.asset("images/lo32.png")),
  Suittap1("", Image.asset("images/lo33.png")),
  Suittap1("", Image.asset("images/lo34.png")),
  Lesson("ตัวบ่งปริมาณ"),
  Suittap1("", Image.asset("images/lo35.png")),
  Suittap1("", Image.asset("images/lo36.png")),
  Suittap1("", Image.asset("images/lo37.png")),
  Suittap1("", Image.asset("images/lo38.png")),
  Suittap1("", Image.asset("images/lo39.png")),
  Suittap1("", Image.asset("images/lo40.png")),
  Suittap1("", Image.asset("images/lo41.png")),
  Suittap1("", Image.asset("images/lo42.png")),
];

List<Widget> Realnumlist = [
  Suittap("", Image.asset("images/real1.png"),
      Pagepicture(Image.asset("images/real2.png"))),
  Suittap("", Image.asset("images/real3.png"),
      Pagepicture(Image.asset("images/real4.png"))),
  Suittap("", Image.asset("images/real5.png"),
      Pagepicture(Image.asset("images/real6.png"))),
  Suittap("", Image.asset("images/real7.png"),
      Pagepicture(Image.asset("images/real8.png"))),
  Suittap("", Image.asset("images/real9.png"),
      Pagepicture(Image.asset("images/real10.png"))),
  Suittap("", Image.asset("images/real11.png"),
      Pagepicture(Image.asset("images/real12.png"))),
  Suittap("", Image.asset("images/real13.png"),
      Pagepicture(Image.asset("images/real14.png"))),
  Suittap("", Image.asset("images/real15.png"),
      Pagepicture(Image.asset("images/real16.png"))),
  Suittap("", Image.asset("images/real17.png"),
      Pagepicture(Image.asset("images/real18.png"))),
  Suittap("", Image.asset("images/real19.png"),
      Pagepicture(Image.asset("images/real20.png"))),
  Suittap("", Image.asset("images/real21.png"),
      Pagepicture(Image.asset("images/real22.png"))),
];

List<Widget> ExpoLogalist = [
  Lesson("ทฤษฎีบที่เกี่ยวข้องกับเลขยกกำลังและราก"),
  Suittap1("", Image.asset("images/ex1.png")),
  Suittap1("", Image.asset("images/ex2.png")),
  Suittap1("", Image.asset("images/ex3.png")),
  Suittap1("", Image.asset("images/ex4.png")),
  Suittap1("", Image.asset("images/ex5.png")),
  Suittap1("", Image.asset("images/ex6.png")),
  Suittap1("", Image.asset("images/ex7.png")),
  Suittap1("", Image.asset("images/ex8.png")),
  Suittap1("", Image.asset("images/ex9.png")),
  Suittap1("", Image.asset("images/ex10.png")),
  Lesson("ฟังก์ชันเอกซ์โพเนนเชียล"),
  Suittap("", Image.asset("images/ex11.png"),
      Pagepicture(Image.asset("images/ex12.png"))),
  Suittap("", Image.asset("images/ex13.png"),
      Pagepicture(Image.asset("images/ex14.png"))),
  Suittap("", Image.asset("images/ex15.png"),
      Pagepicture(Image.asset("images/ex16.png"))),
  Lesson("ฟังก์ชันลอการิทึม"),
  Suittap("", Image.asset("images/ex17.png"),
      Pagepicture(Image.asset("images/ex18.png"))),
  Lesson("สมบัติสำคัญของลอการิทึม"),
  Suittap1("", Image.asset("images/ex19.png")),
  Suittap1("", Image.asset("images/ex20.png")),
  Suittap1("", Image.asset("images/ex21.png")),
  Suittap1("", Image.asset("images/ex22.png")),
  Suittap1("", Image.asset("images/ex23.png")),
  Suittap1("", Image.asset("images/ex24.png")),
  Suittap1("", Image.asset("images/ex25.png")),
  Suittap1("", Image.asset("images/ex26.png")),
  Suittap1("", Image.asset("images/ex27.png")),
  Suittap1("", Image.asset("images/ex28.png")),
  Suittap("", Image.asset("images/ex29.png"),
      Pagepicture(Image.asset("images/ex30.png"))),
  Suittap("", Image.asset("images/ex31.png"),
      Pagepicture(Image.asset("images/ex32.png"))),
];

List<Widget> Geometrylist = [
  Suittap("", Image.asset("images/ge1.png"),
      Pagepicture(Image.asset("images/ge2.png"))),
  Suittap("", Image.asset("images/ge3.png"),
      Pagepicture(Image.asset("images/ge4.png"))),
  Suittap("", Image.asset("images/ge5.png"),
      Pagepicture(Image.asset("images/ge6.png"))),
  Suittap("", Image.asset("images/ge7.png"),
      Pagepicture(Image.asset("images/ge8.png"))),
  Suittap("", Image.asset("images/ge9.png"),
      Pagepicture(Image.asset("images/ge10.png"))),
  Suittap("", Image.asset("images/ge11.png"),
      Pagepicture(Image.asset("images/ge12.png"))),
  Suittap("", Image.asset("images/ge13.png"),
      Pagepicture(Image.asset("images/ge14.png"))),
  Suittap("", Image.asset("images/ge15.png"),
      Pagepicture(Image.asset("images/ge16.png"))),
  Suittap(
      "",
      Image.asset("images/ge17.png"),
      PagepicSp(Image.asset("images/ge18.png"), Image.asset("images/ge19.png"),
          Image.asset("images/ge20.png"))),
  Suittap("", Image.asset("images/ge21.png"),
      Pagepicture(Image.asset("images/ge22.png"))),
  Suittap(
      "",
      Image.asset("images/ge23.png"),
      PagepicSp(Image.asset("images/ge24.png"), Image.asset("images/ge25.png"),
          Image.asset("images/ge26.png"))),
  Suittap("", Image.asset("images/ge27.png"),
      Pagepicture(Image.asset("images/ge28.png"))),
];

List<Widget> Countlist = [
  Suittap1("หลักการบวก", Image.asset("images/c5.png")),
  Suittap1("หลักการคูณ", Image.asset("images/c6.png")),
  Suittap1("การเรียงสับเปลี่ยนสิ่งของ\nที่แตกต่างกันทั้งหมด",
      Image.asset("images/c1.png")),
  Suittap1("การเรียงสับเปลี่ยนสิ่งของ\nที่ไม่แตกต่างกันทั้งหมด",
      Image.asset("images/c2.png")),
  Suittap1("การเรียงสับเปลี่ยนสิ่งของ\nที่แตกต่างกันทั้งหมดเชิงวงกลม",
      Image.asset("images/c3.png")),
  Suittap1("การจัดหมู่", Image.asset("images/c4.png")),
];

List<Widget> Probabilitylist = [
  Suittap1("แฟกทอเรียล", Image.asset("images/pr1.png")),
  Suittap1("สิ่งของซ้ำกัน\nจัดเรียงเป็นเส้นตรง", Image.asset("images/pr2.png")),
  Suittap1("การเรียงสับเปลี่ยนสิ่งของ\nที่แตกต่างกันทั้งหมดเชิงวงกลม",
      Image.asset("images/c3.png")),
  Suittap1("สิ่งของซ้ำกัน\nจัดเรียงเป็นวงกลม", Image.asset("images/pr3.png")),
  Suittap1("การจัดหมู่", Image.asset("images/c4.png")),
  Suittap1("การเรียงสับเปลี่ยนสิ่งของ\nที่แตกต่างกันทั้งหมด",
      Image.asset("images/c1.png")),
];

List<Widget> Trigonlist = [
  Suittap("", Image.asset("images/t1.png"),
      Pagepicture(Image.asset("images/t2.png"))),
  Suittap(
      "",
      Image.asset("images/t3.png"),
      PagepicSp(
        Image.asset("images/t4.png"),
        Image.asset("images/t5.png"),
        Image.asset("images/t6.png"),
      )),
  Suittap("", Image.asset("images/t7.png"),
      Pagepicture(Image.asset("images/t8.png"))),
  Suittap("", Image.asset("images/t9.png"),
      Pagepicture(Image.asset("images/t10.png"))),
  Suittap("", Image.asset("images/t11.png"),
      Pagepicture(Image.asset("images/t12.png"))),
  Suittap("", Image.asset("images/t13.png"),
      Pagepicture(Image.asset("images/t14.png"))),
  Suittap("", Image.asset("images/t15.png"),
      Pagepicture(Image.asset("images/t16.png"))),
  Suittap("", Image.asset("images/t17.png"),
      Pagepicture(Image.asset("images/t18.png"))),
  Suittap("", Image.asset("images/t19.png"),
      Pagepicture(Image.asset("images/t20.png"))),
];

List<Widget> Complexlist = [
  Suittap("", Image.asset("images/cm1.png"),
      Pagepicture(Image.asset("images/cm2.png"))),
  Suittap("", Image.asset("images/cm3.png"),
      Pagepicture(Image.asset("images/cm4.png"))),
  Suittap("", Image.asset("images/cm5.png"),
      Pagepicture(Image.asset("images/cm6.png"))),
  Suittap("", Image.asset("images/cm7.png"),
      Pagepicture(Image.asset("images/cm8.png"))),
  Suittap("", Image.asset("images/cm9.png"),
      Pagepicture(Image.asset("images/cm10.png"))),
  Suittap("", Image.asset("images/cm11.png"),
      Pagepicture(Image.asset("images/cm12.png"))),
  Suittap("", Image.asset("images/cm13.png"),
      Pagepicture(Image.asset("images/cm14.png"))),
  Suittap("", Image.asset("images/cm15.png"),
      Pagepicture(Image.asset("images/cm16.png"))),
  Suittap("", Image.asset("images/cm17.png"),
      Pagepicture(Image.asset("images/cm18.png"))),
];

List<Widget> Powlist = [
  Lesson("สมบัติเลขยกกำลัง"),
  Suittap1("", Image.asset("images/pow1.png")),
  Suittap1("", Image.asset("images/pow2.png")),
  Suittap1("", Image.asset("images/pow3.png")),
  Suittap1("", Image.asset("images/pow4.png")),
  Suittap1("", Image.asset("images/pow5.png")),
  Suittap1("", Image.asset("images/pow6.png")),
  Suittap1("", Image.asset("images/pow7.png")),
];

List<Widget> Sequenlist = [
  Suittap(
      "ลำดับเลขคณิต",
      Image.asset("images/se1.png"),
      PageV3v41(Image.asset("images/se1.png"), "a1", "n", "d",
          Image.asset("images/seX.png"))),
  Suittap(
      "ลำดับเรขาคณิต",
      Image.asset("images/se2.png"),
      PageV3v42(Image.asset("images/se2.png"), "a1", "r", "n",
          Image.asset("images/seX.png"))),
  Suittap(
      "อนุกรมเลขตณิต",
      Image.asset("images/se3.png"),
      PageV3v43(Image.asset("images/se3.png"), "n", "a1", "d",
          Image.asset("images/seX.png"))),
  Suittap1("อนุกรมเลขคณิต", Image.asset("images/se4.png")),
  Suittap1("อนุกรมเรขาคณิต", Image.asset("images/se11.png")),
  Suittap1("อนุกรมสเรขาคณิต", Image.asset("images/se12.png")),
  Lesson("สมบัติของซิกม่า"),
  Suittap1("", Image.asset("images/se5.png")),
  Suittap1("", Image.asset("images/se6.png")),
  Suittap1("", Image.asset("images/se7.png")),
  Suittap1("", Image.asset("images/se8.png")),
  Suittap1("", Image.asset("images/se9.png")),
  Suittap1("", Image.asset("images/se10.png")),
];
