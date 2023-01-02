import 'package:flutter/material.dart';
import 'Fortap.dart';
import 'PageV1.dart';
import 'PageV2.dart';
import 'PageV3.dart';
import 'PageV4.dart';
import 'PageV5.dart';
import 'PageV6.dart';

//คลื่น
List<Widget> wavelist = [
  Suittap('อัตราเร็วของคลื่น', Image.asset("images/test2.png"),
      PageV2v1(Image.asset("images/test2.png"), "f", "แลมบ์ด้า",Image.asset("images/waveX.png"))),
  Suittap('ความยาวของคลื่น', Image.asset("images/test3.png"),
      PageV2v2(Image.asset("images/test3.png"), "v", "f",Image.asset("images/waveX.png"))),
  Suittap('ความถี่ของคลื่น', Image.asset("images/test4.png"),
      PageV2v2(Image.asset("images/test4.png"), "v", "แลมบ์ดา",Image.asset("images/waveX.png"))),
  Suittap('อัตราเร็วของคลื่น', Image.asset("images/test5.png"),
      PageV2v2(Image.asset("images/test5.png"), "s", "t",Image.asset("images/waveX.png"))),
  Suittap('ระยะทางในการเคลื่อนที่', Image.asset("images/test6.png"),
      PageV2v1(Image.asset("images/test6.png"), "v", "t",Image.asset("images/waveX.png"))),
  Suittap('เวลาที่ใช้ในการเคลื่อนที่', Image.asset("images/test7.png"),
      PageV2v2(Image.asset("images/test7.png"), "s", "v",Image.asset("images/waveX.png"))),
  Suittap('กฏการสะท้อน', Image.asset("images/test8.png"), PageV1v1(Image.asset("images/test8.png"), "0ตกกระทบ or 0สะท้อน",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin1.png"), PageV3v1(Image.asset("images/sin1.png"),"0", "v1","v2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin2.png"), PageV3v1(Image.asset("images/sin2.png"),"0", " λ1"," λ2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin3.png"), PageV3v1(Image.asset("images/sin3.png"),"0", "n1","n2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin4.png"), PageV3v1(Image.asset("images/sin4.png"),"v", " λ1"," λ2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin5.png"), PageV3v1(Image.asset("images/sin5.png"),"v", "n1","n2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin6.png"), PageV3v1(Image.asset("images/sin6.png"),"0", "n1","n2",Image.asset("images/waveX.png"))),
  Suittap('กฏการหักเห', Image.asset("images/sin7.png"), PageV3v1(Image.asset("images/sin7.png")," λ", "n1","n2",Image.asset("images/waveX.png"))),
  Suittap('กฏการแทรกสอด', Image.asset("images/d1.png"), PageV3v2(Image.asset("images/d1.png"), "d or 0","n", " λ",Image.asset("images/waveX.png"))),
  Suittap('กฏการแทรกสอด', Image.asset("images/d2.png"), PageV4v1(Image.asset("images/d2.png"),"d or x","L","n", "L",Image.asset("images/waveX.png"))),
  Suittap('กฏการแทรกสอด', Image.asset("images/d3.png"), PageV4v2(Image.asset("images/d3.png"),"S1", "p","S2","0",Image.asset("images/waveX.png"))),
  Suittap('กฏการแทรกสอด', Image.asset("images/d4.png"), PageV5v1(Image.asset("images/d4.png"),"S1", "p", "S2","L", "d or x",Image.asset("images/waveX.png"))),
];

//เสียง
List<Widget> voiselist = [
  Suittap('ความเข้มเสียง', Image.asset("images/test10.png"), PageV2v20(Image.asset("images/test10.png"),  "p", "r",Image.asset("images/voiseX.png"))),
  Suittap1('ความเข้มเสียง', Image.asset("images/test11.png")),
  Suittap('ระดับความเข้มเสียง', Image.asset("images/test12.png"), PageV1v2(Image.asset("images/test12.png"), "t",Image.asset("images/voiseX.png"))),
  Suittap('ระดับความเข้มเสียง', Image.asset("images/v1.png"), PageV3v3(Image.asset("images/v1.png"), "v", "T1", "T2",Image.asset("images/voiseX.png"))),
  Suittap('เมื่อ R คงที่', Image.asset("images/v2.png"), PageV3v4(Image.asset("images/v2.png"), "B", "P2", "P1",Image.asset("images/voiseX.png"))),
  Suittap('เมื่อ P คงที่', Image.asset("images/V3.png"), PageV3v5(Image.asset("images/v3.png"), "B", "R1", "R2",Image.asset("images/voiseX.png"))),
  Suittap('ปรากฎการณ์บีสต์', Image.asset("images/v5.png"), PageV2v3(Image.asset("images/v5.png"), "f1", "f2",Image.asset("images/voiseX.png"))),
  Suittap('ปรากฎการณ์บีสต์', Image.asset("images/v6.png"), PageV2v4(Image.asset("images/v6.png"), "f1", "f2",Image.asset("images/voiseX.png"))),
  Suittap('คลื่นกระแทก', Image.asset("images/v7.png"), PageV1v3(Image.asset("images/v7.png"), "0",Image.asset("images/voiseX.png"))),
  Suittap('คลื่นกระแทก', Image.asset("images/v8.png"), PageV2v2(Image.asset("images/v8.png"), "Vs", "Vw",Image.asset("images/voiseX.png"))),
];

//แสง
List<Widget> Lightlist = [
  Suittap("ความยาวโฟกัส", Image.asset("images/l1.png"), PageV2v5(Image.asset("images/l1.png"), "s", "s'",Image.asset("images/light.png"))),
  Suittap("ความยาวโฟกัส", Image.asset("images/l4.png"), PageV2v6(Image.asset("images/l4.png"), "f", "s",Image.asset("images/light.png"))),
  Suittap("กำลังขยาย", Image.asset("images/l2.png"), PageV4v3(Image.asset("images/l2.png"),"y'","y","s'","s",Image.asset("images/light.png"))),
  Suittap("กำลังขยาย", Image.asset("images/l3.png"), PageV1v4(Image.asset("images/l3.png"), "R",Image.asset("images/light.png"))),
  Suittap("ความสว่าง", Image.asset("images/l5.png"), PageV2v2(Image.asset("images/l5.png"), "f", 'A',Image.asset("images/light.png"))),
  Suittap("ความสว่าง", Image.asset("images/l6.png"), PageV2v7(Image.asset("images/l6.png"), "I", "R",Image.asset("images/light.png"))),
];

//ซิมเปิลฮาร์มอนิก
List<Widget> Simplelist = [
  Suittap('การกระจัด\n ;แกน x', Image.asset('images/s1.png'), PageV3v6(Image.asset('images/s1.png'), "A","w" ,"t",Image.asset("images/shm.png"))),
  Suittap('ความเร็ว\n ;แกน x', Image.asset('images/s2.png'), PageV3v7(Image.asset('images/s2.png'), "w","A", "t",Image.asset("images/shm.png"))),
  Suittap('ความเร็ว\n ;แกน x', Image.asset('images/s3.png'), PageV3v8(Image.asset('images/s3.png'),"w", "A", "x",Image.asset("images/shm.png"))),
  Suittap('ความเร่ง\n ;แกน x', Image.asset('images/s4.png'), PageV3v9(Image.asset('images/s4.png'), "w", "A","t",Image.asset("images/shm.png"))),
  Suittap('ความเร่ง\n ;แกน x', Image.asset('images/s5.png'), PageV2v8(Image.asset('images/s5.png'), "w","x",Image.asset("images/shm.png"))),
  Suittap('ความเร็วสูงสุด\n ;แกน x', Image.asset('images/s6.png'),
      PageV2v1(Image.asset('images/s6.png'), 'w', "A",Image.asset("images/shm.png"))),
  Suittap('ความเร่งสูงสุด\n ;แกน x', Image.asset('images/s7.png'), PageV2v9(Image.asset('images/s7.png'), "w", "A",Image.asset("images/shm.png"))),
  Suittap('การกระจัด\n ;แกน y', Image.asset('images/s8.png'), PageV3v10(Image.asset('images/s8.png'), "A","w","t",Image.asset("images/shm.png"))),
  Suittap('ความเร็ว\n ;แกน y', Image.asset('images/s9.png'), PageV3v11(Image.asset('images/s9.png'), "w","A","t",Image.asset("images/shm.png"))),
  Suittap('ความเร็ว\n ;แกน y', Image.asset('images/s10.png'), PageV3v8(Image.asset('images/s10.png'), "w","A", "y",Image.asset("images/shm.png"))),
  Suittap('ความเร่ง\n ;แกน y', Image.asset('images/s11.png'), PageV3v12(Image.asset('images/s11.png'),"w","A","t",Image.asset("images/shm.png"))),
  Suittap('ความเร่ง\n ;แกน y', Image.asset('images/s12.png'), PageV2v8(Image.asset('images/s12.png'), "w", "y",Image.asset("images/shm.png"))),
  Suittap('ความถี่\n มวลติดปลายสปริง', Image.asset('images/s13.png'), PageV2v10(Image.asset('images/s13.png'), "k", "m",Image.asset("images/shm.png"))),
  Suittap('คาบ\n มวลติดปลายสปริง', Image.asset('images/s14.png'), PageV2v11(Image.asset('images/s14.png'), "m", "k",Image.asset("images/shm.png"))),
  Suittap('อัตราส่วนของความถี่\n มวลติดปลายสปริง',
      Image.asset('images/s15.png'), PageV3v3(Image.asset('images/s15.png') ,"f", "m1", "m2",Image.asset("images/shm.png"))),
  Suittap('อัตราส่วนของคาบ\n มวลติดปลายสปริง', Image.asset('images/s16.png'),
      PageV3v3(Image.asset('images/s16.png') ,"T", "m2", "m1",Image.asset("images/shm.png"))),
  Suittap('ความถี่\n ลูกตุ้มเพนดูลัม', Image.asset('images/s17.png'), PageV2v10(Image.asset('images/s17.png'), "g", "L",Image.asset("images/shm.png"))),
  Suittap('คาบ\n ลูกตุ้มเพนดูลัม', Image.asset('images/s18.png'), PageV2v11(Image.asset('images/s18.png'),"L", "g",Image.asset("images/shm.png"))),
  Suittap('อัตราส่วนของความถี่\n ลูกตุ้มเพนดูลัม',
      Image.asset('images/s19.png'), PageV3v3(Image.asset('images/s19.png') ,"f", "L1", "L2",Image.asset("images/shm.png"))),
  Suittap('อัตราส่วนของคาบ\n ลูกตุ้มเพนดูลัม', Image.asset('images/s20.png'),
      PageV3v3(Image.asset('images/s20.png') ,"T", "L2", "L1",Image.asset("images/shm.png"))),
];

//แรง
List<Widget> ForceList = [
  Suittap('ความเร็ว', Image.asset("images/f1.png"), PageV4v4(Image.asset("images/f1.png"),"S2","S1", "t2", "t1",Image.asset("images/forceX.png"))),
  Suittap('ความเร่ง', Image.asset("images/f2.png"), PageV4v4(Image.asset("images/f2.png"),"u2","u1", "t2", "t1",Image.asset("images/forceX.png"))),
  Suittap('ความเร็ว', Image.asset("images/f3.png"), PageV3v13(Image.asset("images/f3.png"),"u","a","t",Image.asset("images/forceX.png"))),
  Suittap('ระยะทาง', Image.asset("images/f4.png"), PageV3v14(Image.asset("images/f4.png"), "u", "v", "t",Image.asset("images/forceX.png"))),
  Suittap('ระยะทาง', Image.asset("images/f5.png"), PageV3v15(Image.asset("images/f5.png"),"u", "t", 'a',Image.asset("images/forceX.png"))),
  Suittap('ระยะทาง', Image.asset("images/f6.png"), PageV3v16(Image.asset("images/f6.png"),"v", "t", "a",Image.asset("images/forceX.png"))),
  Suittap('ความเร็ว', Image.asset("images/f7.png"), PageV3v17(Image.asset("images/f7.png"), "u", "a", "s",Image.asset("images/forceX.png"))),
  Suittap('แรง', Image.asset("images/f8.png"),
      PageV2v1(Image.asset("images/f8.png"), "m", "a",Image.asset("images/forceX.png"))),
  Suittap('น้ำหนัก', Image.asset("images/f9.png"),
      PageV2v1(Image.asset("images/f9.png"), "m", "g",Image.asset("images/forceX.png"))),
  Suittap('อัตราส่วนระหว่างน้ำหนัก\ของมวลสองก้อน',
      Image.asset("images/f10.png"), PageV3v1(Image.asset("images/f10.png"), "w", 'm1', "m2",Image.asset("images/forceX.png"))),
  Suittap('แรงดึงดูดระหว่างมวล', Image.asset("images/f11.png"), PageV3v18(Image.asset("images/f11.png"), "m1","m2","R",Image.asset("images/forceX.png"))),
  Suittap(
      'ความเร่งเนื่องจากแรงโน้มถ่วง', Image.asset("images/f12.png"), PageV3v37(Image.asset("images/f12.png"), "G","m", "R",Image.asset("images/forceX.png"))),
  Suittap('อัตราส่วนความเร่ง\กับระยะห่างของวัตถุ',
      Image.asset("images/f13.png"), PageV3v20(Image.asset("images/f13.png"), "g","R2","R1",Image.asset("images/forceX.png"))),
  Suittap('อัตราส่วนความเร่ง\กับระยะห่างของวัตถุ',
      Image.asset("images/f14.png"), PageV3v20(Image.asset("images/f14.png"),"g","R1", "h",Image.asset("images/forceX.png"))),
  Suittap('วัตถุมีทิศขึ้น', Image.asset("images/f15.png"), PageV3v22(Image.asset("images/f15.png"),"T","m", "g",Image.asset("images/forceX.png"))),
  Suittap('วัตถุมีทิศลง', Image.asset("images/f16.png"), PageV3v23(Image.asset("images/f16.png"), "m","g","T",Image.asset("images/forceX.png"))),
];

//สมดุลกล
List<Widget> Balancelist = [
  Suittap('แรงบน = แรงล่าง', Image.asset("images/b1.png"), PageV2v12(Image.asset("images/b1.png"), "T", "0",Image.asset("images/balanceX.png"))),
  Suittap('แรงซ้าย = แรงขวา', Image.asset("images/b2.png"), PageV2v13(Image.asset("images/b2.png"), "T", "0",Image.asset("images/balanceX.png"))),
  Suittap('สมดุลต่อการเลื่อนที่', Image.asset("images/b3.png"), PageV4v5(Image.asset("images/b3.png"),"T1", "01","T2","02",Image.asset("images/balanceX.png"))),
  Suittap('สมดุลต่อการเลื่อนที่', Image.asset("images/b4.png"), PageV3v24(Image.asset("images/b4.png"), "T2","0","0",Image.asset("images/balanceX.png"))),
  Suittap('สมดุลของวัตถุบนพื้นเอียง', Image.asset("images/b5.png"), PageV2v13(Image.asset("images/b5.png"), "w", "0",Image.asset("images/balanceX.png"))),
  Suittap('สมดุลของวัตถุบนพื้นเอียง', Image.asset("images/b6.png"), PageV2v12(Image.asset("images/b6.png"), "w", "0",Image.asset("images/balanceX.png"))),
  Suittap('โมเมนของแรง', Image.asset("images/b7.png"),
      PageV2v1(Image.asset("images/b7.png"), "f", "L",Image.asset("images/balanceX.png"))),
  Suittap('โมเมนของแรง', Image.asset("images/b8.png"), PageV3v25(Image.asset("images/b8.png"),"f","L","0",Image.asset("images/balanceX.png"))),
  Suittap('โมเมนของแรง', Image.asset("images/b9.png"), PageV3v26(Image.asset("images/b9.png"), "f", "L","0",Image.asset("images/balanceX.png"))),
  Suittap('คาน', Image.asset("images/b10.png"), PageV1v5(Image.asset("images/b10.png"),"Mทวน or Mตาม",Image.asset("images/balanceX.png"))),
  Suittap('คาน', Image.asset("images/b11.png"), PageV3v24(Image.asset("images/b11.png"),"F2","L2","F1",Image.asset("images/balanceX.png"))),
  Suittap('กระดานกระโดดน้ำ', Image.asset("images/b12.png"), PageV5v2(Image.asset("images/b12.png"), "w1", "L2", "w2", "L3","L1 or F",Image.asset("images/balanceX.png"))),
  Suittap('กระดานกระโดดน้ำ', Image.asset("images/b13.png"), PageV3v27(Image.asset("images/b13.png"),"F","w1","w2",Image.asset("images/balanceX.png"))),
  Suittap('บันไดพาดกำแพงเกลี้ยง', Image.asset("images/b14.png"), PageV1v6(Image.asset("images/b14.png"), "N or f",Image.asset("images/balanceX.png"))),
  Suittap('บันไดพาดกำแพงเกลี้ยง', Image.asset("images/b15.png"), PageV3v28(Image.asset("images/b15.png"),"f", "μ", "N",Image.asset("images/balanceX.png"))),
  Suittap('บันไดพาดกำแพงเกลี้ยง', Image.asset("images/b16.png"), PageV2v14(Image.asset("images/b16.png"), "w1", "w2",Image.asset("images/balanceX.png"))),
  Suittap('บันไดพาดกำแพงเกลี้ยง', Image.asset("images/b17.png"), PageV5v3(Image.asset("images/b17.png"),"w1","L1","0","w2","L",Image.asset("images/balanceX.png"))),
  Suittap('การผลักกล่อง', Image.asset("images/b18.png"), PageV1v7(Image.asset("images/b18.png"),"W or N",Image.asset("images/balanceX.png"))),
  Suittap('การผลักกล่อง', Image.asset("images/b19.png"), PageV1v7(Image.asset("images/b19.png"), "F or f",Image.asset("images/balanceX.png"))),
  Suittap('การผลักกล่อง', Image.asset("images/b20.png"),
      PageV2v1(Image.asset("images/b20.png"), "μ", "N",Image.asset("images/balanceX.png"))),
  Suittap('การผลักกล่อง', Image.asset("images/b21.png"), PageV3v29(Image.asset("images/b21.png"),"F", 'h',"w",Image.asset("images/balanceX.png"))),
];

//งานและพลังงาน
List<Widget> Powerlist = [
  Suittap('งาน', Image.asset('images/po1.png'),
      PageV2v1(Image.asset('images/po1.png'), "F", "s",Image.asset("images/workX.png"))),
  Suittap('งาน', Image.asset('images/w2.png'), PageV3v30(Image.asset('images/w2.png'), "F","s","0",Image.asset("images/workX.png"))),
  Suittap('พลังงานศักย์โน้มถ่วง', Image.asset('images/w3.png'), PageV3v31(Image.asset('images/w3.png'),"m","g","h",Image.asset("images/workX.png"))),
  Suittap('พลังงานศักย์โน้มถ่วง', Image.asset('images/w4.png'), PageV4v12(Image.asset('images/w4.png'), "G", "M","m", "R5",Image.asset("images/workX.png"))),
  Suittap('พลังงานศักย์สปริง', Image.asset('images/w5.png'), PageV6v1(Image.asset('images/w5.png'), "G","M","m","R", "m or h", "g or h", Image.asset("images/workX.png"))),
  Suittap('พลังงานจลน์', Image.asset('images/w6.png'), PageV2v15(Image.asset('images/w6.png'), "k", "x",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w7.png'), PageV2v15(Image.asset('images/w7.png'),"m", "v",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w8.png'), PageV2v2(Image.asset('images/w8.png'), "W", "t",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w9.png'), PageV3v2(Image.asset('images/w9.png'), "t", "F", "s",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w10.png'),
      PageV2v1(Image.asset('images/w10.png'), "F", "v",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w11.png'), PageV3v2(Image.asset('images/w11.png'), "t", "F","v",Image.asset("images/workX.png"))),
  Suittap('กำลัง', Image.asset('images/w12.png'), PageV3v38(Image.asset('images/w12.png'), "F","v","t",Image.asset("images/workX.png"))),
];

//โมเมนตัมและการชน
List<Widget> Momentunlist = [
  Suittap('โมเมนตัม', Image.asset('images/m1.png'),
      PageV2v1(Image.asset('images/m1.png'), "m", "v",Image.asset("images/momentX.png"))),
  Suittap('การเปลี่ยนแปลงโมเมนตัม', Image.asset('images/m2.png'), PageV3v32(Image.asset('images/m2.png'),"m", "v", "u",Image.asset("images/momentX.png"))),
  Suittap('แรงและการเปลี่ยนแปลงโมเมนตัม', Image.asset('images/m3.png'), PageV4v6(Image.asset('images/m3.png'),"m","v","u","Δt",Image.asset("images/momentX.png"))),
  Suittap('การดล', Image.asset('images/m4.png'),
      PageV2v1(Image.asset('images/m4.png'), "F", "Δt",Image.asset("images/momentX.png"))),
  Suittap('การดล', Image.asset('images/m5.png'), PageV3v32(Image.asset('images/m5.png'),"m", "v", "u",Image.asset("images/momentX.png"))),
  Suittap('กฏการอนุรักษ์โมเมนตัม', Image.asset('images/m6.png'), PageV2v21(Image.asset('images/m6.png'), "m", "u or v",Image.asset("images/momentX.png"))),
  Suittap('การชน 1 มิติ', Image.asset('images/m7.png'), PageV5v4(Image.asset('images/m7.png'),"m1","u1","m2", "u2","v2",Image.asset("images/momentX.png"))),
  Suittap('การชน 2 มิติ ;แกน x', Image.asset('images/m8.png'), PageV6(Image.asset('images/m8.png'), "m1","v1", "0","m2", "v2","m or u",Image.asset("images/momentX.png"))),
  Suittap('การชน 2 มิติ ;แกน y', Image.asset('images/m9.png'), PageV4v13(Image.asset('images/m9.png'),"m2","v2", "0","m1 or v1",Image.asset("images/momentX.png"))),
  Suittap('การชนยืดหยุ่น 2 มิติ ;แกน x', Image.asset('images/m10.png'), PageV5v5(Image.asset('images/m10.png'),"m1","v1", "0", "m2", "v2",Image.asset("images/momentX.png"))),
  Suittap('การชนยืดหยุ่น 2 มิติ ;แกน y', Image.asset('images/m11.png'), PageV5v5(Image.asset('images/m11.png'),"m1","v1", "0", "m2", "v2",Image.asset("images/momentX.png"))),
  Suittap('การชนแบบไม่ยืดหยุ่น', Image.asset('images/m12.png'), PageV4v11(Image.asset('images/m12.png'),"m1","u1", "m2","u2",Image.asset("images/momentX.png"))),
  Suittap('การระเบิด 1 มิติ', Image.asset('images/m13.png'), PageV5v7(Image.asset('images/m13.png'),"m1","v1","m2", "v2", "m or u",Image.asset("images/momentX.png"))),
];

//โปรเจคไทล์
List<Widget> Projectite = [
  Suittap('ระยะทาง', Image.asset('images/p1.png'),
      PageV2v1(Image.asset('images/p1.png'), "u", "t",Image.asset("images/porjectX.png"))),
  Suittap('ความเร็ว', Image.asset('images/p2.png'), PageV3v13(Image.asset('images/p2.png'), "u", "a","t",Image.asset("images/porjectX.png"))),
  Suittap('ความสูง', Image.asset('images/p3.png'), PageV3v14(Image.asset('images/p3.png'), "u","v","t",Image.asset("images/porjectX.png"))),
  Suittap('ความสูง', Image.asset('images/p4.png'), PageV3v15(Image.asset('images/p4.png'), "u","t", "g",Image.asset("images/porjectX.png"))),
  Suittap('ความสูง', Image.asset('images/p5.png'), PageV3v16(Image.asset('images/p5.png'), "v","t", "g",Image.asset("images/porjectX.png"))),
  Suittap('เวลา', Image.asset('images/p6.png'), PageV3v33(Image.asset('images/p6.png'),"u","0","g",Image.asset("images/porjectX.png"))),
  Suittap('เวลา', Image.asset('images/p7.png'), PageV3v33(Image.asset('images/p7.png'), "u","0", "g",Image.asset("images/porjectX.png"))),
  Suittap('ระยะทาง', Image.asset('images/p8.png'), PageV4v7(Image.asset('images/p8.png'), "u","0", "0", "g",Image.asset("images/porjectX.png"))),
  Suittap('ความสูง', Image.asset('images/p9.png'), PageV3v35(Image.asset('images/p9.png'),"u","0", "g",Image.asset("images/porjectX.png"))),
  Suittap('อัตราส่วนความสูงต่อระยะทาง', Image.asset('images/p10.png'), PageV2v16(Image.asset('images/p10.png'), "0", "s",Image.asset("images/porjectX.png"))),
];

//ไฟฟ้า
List<Widget> Electriclist = [
  Suittap('แรงระหว่างประจุ', Image.asset('images/e1.png'), PageV3v19(Image.asset('images/e1.png'), "Q1","Q2", "R",Image.asset("images/elecX.png"))),
  Suittap('สนาม (แรงต่อประจุ)', Image.asset('images/e2.png'), PageV2v2(Image.asset('images/e2.png'), "F", "Q",Image.asset("images/elecX.png"))),
  Suittap('สนาม (แรงต่อประจุ)', Image.asset('images/e3.png'), PageV3v37(Image.asset('images/e3.png'),"k","Q","R",Image.asset("images/elecX.png"))),
  Suittap('พลังงานศักย์ไฟฟ้า', Image.asset('images/e4.png'), PageV4v1(Image.asset('images/e4.png'),"k","Q1", "Q2","R",Image.asset("images/elecX.png"))),
  Suittap('ศักย์ไฟฟ้า', Image.asset('images/e5.png'), PageV3v2(Image.asset('images/e5.png'), "R", "k", "Q",Image.asset("images/elecX.png"))),
  Suittap('แผ่นคู่ขนาน', Image.asset('images/e6.png'),
      PageV2v1(Image.asset('images/e6.png'), "E", "d",Image.asset("images/elecX.png"))),
  Suittap('ตัวเก็บประจุ', Image.asset('images/e7.png'),
      PageV2v1(Image.asset('images/e7.png'), "C", "V",Image.asset("images/elecX.png"))),
  Suittap('ตัวเก็บประจุ', Image.asset('images/e8.png'), PageV2v2(Image.asset('images/e8.png'),"R", "k",Image.asset("images/elecX.png"))),
  Suittap('พลังงานสะสมในตัวเก็บประจุ', Image.asset('images/e9.png'), PageV2v17(Image.asset('images/e9.png'),"Q", "V",Image.asset("images/elecX.png"))),
  Suittap('กระแสไฟฟ้า', Image.asset('images/e10.png'), PageV2v2(Image.asset('images/e10.png'), "Q", "t",Image.asset("images/elecX.png"))),
  Suittap('ความต้านทานในตัวนำ', Image.asset('images/e11.png'), PageV3v1(Image.asset('images/e11.png'), "p", "L", "A",Image.asset("images/elecX.png"))),
  Suittap('ตัวต้านทาน', Image.asset('images/e12.png'), PageV2v1(Image.asset('images/e12.png'), "I", "R",Image.asset("images/elecX.png"))),
  Suittap('กำลังไฟฟ้า', Image.asset('images/e13.png'), PageV2v1(Image.asset('images/e13.png'), "I", "V",Image.asset("images/elecX.png"))),
  Suittap('กำลังไฟฟ้า', Image.asset('images/e14.png'), PageV2v9(Image.asset('images/e14.png'), "I", "R",Image.asset("images/elecX.png"))),
  Suittap('กำลังไฟฟ้า', Image.asset('images/e15.png'), PageV2v18(Image.asset('images/e15.png'), "V", "R",Image.asset("images/elecX.png"))),
  Suittap1('อนุกรม', Image.asset('images/e16.png'), ),
  Suittap1('ขนาน', Image.asset('images/e17.png'), ),
  Suittap1('อนุกรม', Image.asset('images/e18.png'),),
  Suittap1('ขนาน', Image.asset('images/e19.png'),),
  Suittap('แรงแม่เหล็กทำต่อประจุ', Image.asset('images/e20.png'), PageV4v8(Image.asset('images/e20.png'), "q","v", "B","0",Image.asset("images/elecX.png"))),
  Suittap('ประจุเคลื่อนที่เป็นวงกลม', Image.asset('images/e21.png'), PageV4v9(Image.asset('images/e21.png'), "m","v","q", "B",Image.asset("images/elecX.png"))),
  Suittap('แรงแม่เหล็กที่ทำกับกระแส', Image.asset('images/e22.png'), PageV4v8(Image.asset('images/e22.png'), "I","L","B", "0",Image.asset("images/elecX.png"))),
  Suittap('แรงระหว่างสายไฟ 2 เส้น', Image.asset('images/e23.png'), PageV4v10(Image.asset('images/e23.png'),"I1","I2","L","d",Image.asset("images/elecX.png"))),
  Suittap('ไฟฟ้ากระแสสลับ', Image.asset('images/e24.png'), PageV1v8(Image.asset('images/e24.png'), "Imax",Image.asset("images/elecX.png"))),
  Suittap('ไฟฟ้ากระแสสลับ', Image.asset('images/e25.png'), PageV1v8(Image.asset('images/e25.png'), "Vmax",Image.asset("images/elecX.png"))),
  Suittap('ไฟฟ้ากระแสสลับ', Image.asset('images/e26.png'), PageV3v10(Image.asset('images/e26.png'), "I", "w", "t",Image.asset("images/elecX.png"))),
  Suittap('ไฟฟ้ากระแสสลับ', Image.asset('images/e27.png'), PageV3v10(Image.asset('images/e27.png'), "V", "w", "t",Image.asset("images/elecX.png"))),
  Suittap('ตัวเก็บประจุ ', Image.asset('images/e28.png'), PageV2v18(Image.asset('images/e28.png'),"w", "C",Image.asset("images/elecX.png"))),
  Suittap('ลวดเหนี่ยวนำ', Image.asset('images/e29.png'),
      PageV2v1(Image.asset('images/e29.png'), "w", "L",Image.asset("images/elecX.png"))),
  Suittap('ต่ออนุกรม', Image.asset('images/e30.png'), PageV3v36(Image.asset('images/e30.png'),"R","XL","Xc",Image.asset("images/elecX.png"))),
  Suittap('ต่อขนาน', Image.asset('images/e31.png'), PageV2v22(Image.asset('images/e31.png'), "Xl", "Xc",Image.asset("images/elecX.png"))),
];
