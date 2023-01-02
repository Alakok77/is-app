import 'package:flutter/material.dart';
import 'Fortap.dart';
import 'PageV1.dart';
import 'PageV2.dart';
import 'PageV3.dart';
import 'PageV4.dart';
import 'PageV5.dart';
import 'PageV6.dart';

List<Widget> Molegul = [
  Suittap("", Image.asset("images/mo1.png"), PageV2v1(Image.asset("images/mo1.png"),"มวลจากสูตรเอมพิริคัล","n",Image.asset("images/molX.png"))),
  Suittap("", Image.asset("images/mo2.png"), PageV2v23(Image.asset("images/mo2.png"),"มวล","ตัวทำละลาย",Image.asset("images/molX.png"))),
  Suittap("", Image.asset("images/mo3.png"), PageV2v23(Image.asset("images/mo3.png"),"ปริมาตร", "ปริมาตรตัวทำละลาย",Image.asset("images/molX.png"))),
  Suittap("", Image.asset("images/mo4.png"), PageV2v23(Image.asset("images/mo4.png"),"มวล",'ปริมาตรตัวทำละลาย',Image.asset("images/molX.png"))),
];

List<Widget> Solutionlist = [
  Suittap("", Image.asset("images/so1.png"), PageV1v9(Image.asset("images/so1.png"), "เศษส่วนโมล",Image.asset("images/soluX.png"))),
  Suittap("", Image.asset("images/so2.png"), PageV2v1(Image.asset("images/so2.png"),"n1","n2",Image.asset("images/soluX.png"))),
  Suittap("จำนวนโมล", Image.asset("images/so3.png"), PageV2v24(Image.asset("images/so3.png"),"c", "v",Image.asset("images/soluX.png"))),
  Suittap("จำนวนโมล", Image.asset("images/so7.png"), PageV2v1(Image.asset("images/so7.png"),"c","v",Image.asset("images/soluX.png"))),
  Suittap("ความเข้มข้น", Image.asset("images/so4.png"), PageV3v39(Image.asset("images/so4.png"),"d","x","M",Image.asset("images/soluX.png"))),
  Suittap("ความเข้มข้น", Image.asset("images/so5.png"), PageV2v25(Image.asset("images/so5.png"), "x","M",Image.asset("images/soluX.png"))),
  Suittap("การเตรียมสารละลาย", Image.asset("images/so6.png"), PageV3v24(Image.asset("images/so6.png"), "c2","v2", "c1 or v1",Image.asset("images/soluX.png"))),
];

List<Widget> Stoichiometry = [
  Suittap("", Image.asset("images/st1.png"), PageV1v10(Image.asset("images/st1.png"),"มวลของธาตุ 1 อะตอม",Image.asset("images/stoiX.png"))),
  Suittap("", Image.asset("images/st2.png"), PageV1v10(Image.asset("images/st2.png"),"มวลของธาตุ 1 โมเลกุล",Image.asset("images/stoiX.png"))),
  Suittap("จำนวนโมล", Image.asset("images/st3.png"), PageV1v11(Image.asset("images/st3.png"), "N",Image.asset("images/stoiX.png"))),
  Suittap("จำนวนโมล", Image.asset("images/st4.png"), PageV2v2(Image.asset("images/st4.png"), "w","M",Image.asset("images/stoiX.png"))),
  Suittap("จำนวนโมล", Image.asset("images/st5.png"), PageV1v12(Image.asset("images/st5.png"), "v",Image.asset("images/stoiX.png"))),
  Suittap("Molar", Image.asset("images/st6.png"), PageV2v2(Image.asset("images/st6.png"), "โมลของตัวละลาย","ปริมาตรสารละลาย",Image.asset("images/stoiX.png"))),
  Suittap("molal", Image.asset("images/st7.png"), PageV2v2(Image.asset("images/st7.png"), "โมลของตัวละลาย","มวลของตัวทำละลาย",Image.asset("images/stoiX.png"))),
  Suittap("เศษส่วนโมลของสาร", Image.asset("images/st8.png"), PageV3v40(Image.asset("images/st8.png"),"x","y", "z",Image.asset("images/stoiX.png"))),
  Suittap("ส่วนในล้านส่วน", Image.asset("images/st9.png"), PageV2v26(Image.asset("images/st9.png"),"ปริมาตรตัวละลาย", "ปริมาตรสารละลาย",Image.asset("images/stoiX.png"))),
  Suittap("ส่วนในพันล้านส่วน", Image.asset("images/st10.png"), PageV2v27(Image.asset("images/st10.png"), "ปริมาตรตัวละลาย","ปริมาตรสารละลาย",Image.asset("images/stoiX.png"))),
];

List<Widget> Gaslist = [
  Suittap("กฎของบอยล์", Image.asset("images/g1.png"), PageV3v2(Image.asset("images/g1.png"),"V1 or P1","P2", "V3",Image.asset("images/gasX.png"))),
  Suittap("กฎของชาร์ล", Image.asset("images/g2.png"), PageV3v3(Image.asset("images/g2.png"), "T1","V2","T2",Image.asset("images/gasX.png"))),
  Suittap("กฎของเกย์ลุสแซก", Image.asset("images/g3.png"), PageV3v2(Image.asset("images/g3.png"), "T1","P2", "T2",Image.asset("images/gasX.png"))),
  Suittap("อาโวกราโด", Image.asset("images/g4.png"), PageV3v2(Image.asset("images/g4.png"), "n1","V2", "n2",Image.asset("images/gasX.png"))),
  Suittap("กฎรวมแก๊ส", Image.asset("images/g5.png"), PageV5v8(Image.asset("images/g5.png"),  "P1 or v1","T1","P2","V2" , "T2",Image.asset("images/gasX.png"))),
  Suittap("กฎแก๊สสมบูรณ์", Image.asset("images/g6.png"), PageV4v1(Image.asset("images/g6.png"),"P or V","n","R","T",Image.asset("images/gasX.png"))),
  Suittap("การแพร่ของแก๊ส", Image.asset("images/g7.png"), PageV5v9(Image.asset("images/g7.png"), "M2","M1","d2","d1","R2",Image.asset("images/gasX.png"))),
  Suittap("ความหนาแน่น", Image.asset("images/g8.png"), PageV4v14(Image.asset("images/g8.png"),"P","M","R","T",Image.asset("images/gasX.png"))),
];

List<Widget> Reactionlist = [
  Suittap("", Image.asset("images/r1.png"), PageV2v2(Image.asset("images/r1.png"),"ปริมาณสารตั้งต้นที่ลดลง","เวลาที่ใช้",Image.asset("images/reacX.png"))),
  Suittap("", Image.asset("images/r2.png"), PageV2v2(Image.asset("images/r2.png"),"ปริมาณผลิตภัณฑ์ที่เพิ่มขึ้น","เวลาที่ใช้",Image.asset("images/reacX.png"))),
  Suittap("อัตราการลดลงของสารตั้งต้น", Image.asset("images/r3.png"), PageV2v28(Image.asset("images/r3.png"), "-Δ[x]","Δt",Image.asset("images/reacX.png"))),
  Suittap("อัตราการเพิ่มขึ้นของผลิตภัณฑ์", Image.asset("images/r4.png"), PageV2v2(Image.asset("images/r4.png"),"Δ[x]","Δt",Image.asset("images/reacX.png"))),
  Suittap("", Image.asset("images/r5.png"), PageV2v2(Image.asset("images/r5.png"),"a","b",Image.asset("images/reacX.png"))),
];

List<Widget> BalanceChemilist = [
  Suittap("ค่าคงที่สมดุล", Image.asset("images/cb1.png"), PageV4v15(Image.asset("images/cb1.png"),"ผลิตภัณฑ์","เลขสัมประสิทธิ์","สารตั้งต้น", "เลขสัมประสิทธิ์",Image.asset("images/balX.png"))),
  Suittap("ค่าคงที่สมดุลความดัน", Image.asset("images/cb2.png"), PageV2v29(Image.asset("images/cb2.png"),"PB","PA",Image.asset("images/balX.png"))),
  Suittap("ค่าคงที่สมดุลความดัน", Image.asset("images/cb3.png"), PageV4v16(Image.asset("images/cb3.png"),"Kc","R","T","Δn",Image.asset("images/balX.png"))),
];

List<Widget> AcidBaselist = [
  Suittap("การแตกตัวของกรดอ่อน", Image.asset("images/a1.png"), PageV2v30(Image.asset("images/a1.png"),"H30+","X",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของกรดอ่อน", Image.asset("images/a2.png"), PageV2v30(Image.asset("images/a2.png"),"Ca","Ka",Image.asset("images/acidX.png"))),
  Suittap("ร้อยละการแตกตัวของกรด", Image.asset("images/a3.png"), PageV2v30(Image.asset("images/a3.png"),"Ka","Ca",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของกรดอ่อน", Image.asset("images/a4.png"), PageV2v30(Image.asset("images/a4.png"), "OH-","X",Image.asset("images/acidX.png"))),
  Suittap("ร้อยละการแตกตัวของกรด", Image.asset("images/a5.png"), PageV2v23(Image.asset("images/a5.png"),"H30+","Ca",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของเบส", Image.asset("images/a6.png"), PageV2v23(Image.asset("images/a6.png"),"OH-","Cb",Image.asset("images/acidX.png"))),
  Suittap("ร้อยละการแตกตัวของกรด", Image.asset("images/a7.png"), PageV2v30(Image.asset("images/a7.png"),"Kb","Cb",Image.asset("images/acidX.png"))),
  Suittap("ร้อยละการแตกตัวของเบส", Image.asset("images/a8.png"), PageV2v30(Image.asset("images/a8.png"),"Cb","Kb",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของน้ำ", Image.asset("images/a9.png"), PageV2v1(Image.asset("images/a9.png"),"H3O+","OH-",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของน้ำ", Image.asset("images/a10.png"), PageV2v1(Image.asset("images/a10.png"),"Ka","Kb",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของน้ำ", Image.asset("images/a11.png"), PageV2v2(Image.asset("images/a11.png"), "kw","kb",Image.asset("images/acidX.png"))),
  Suittap("การแตกตัวของน้ำ", Image.asset("images/a12.png"), PageV2v2(Image.asset("images/a12.png"),"kw","ka",Image.asset("images/acidX.png"))),
  Suittap("", Image.asset("images/a13.png"), PageV1v13(Image.asset("images/a13.png"),"H30+",Image.asset("images/acidX.png"))),
  Suittap("", Image.asset("images/a14.png"), PageV1v13(Image.asset("images/a14.png"), "OH-",Image.asset("images/acidX.png"))),
];