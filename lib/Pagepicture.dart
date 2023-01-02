import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pagepicture extends StatefulWidget {
  Image picture1;
  Pagepicture(this.picture1);

  @override
  State<Pagepicture> createState() => _PagepictureState(picture1);
}

class _PagepictureState extends State<Pagepicture> {
  Image picture;
  _PagepictureState(this.picture);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: picture,
        ),
      ],
    );
  }
}

class PagepicSp extends StatefulWidget {
  Image picture11;
  Image picture22;
  Image picture33;

  PagepicSp(this.picture11,this.picture22,this.picture33);

  @override
  State<PagepicSp> createState() => _PagepicSpState(picture11,picture22,picture33);
}

class _PagepicSpState extends State<PagepicSp> {
  Image picture1;
  Image picture2;
  Image picture3;

  _PagepicSpState(this.picture1,this.picture2,this.picture3,);
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          child: picture1,
        ),
        Expanded(
          child: picture2,
        ),
        Expanded(
          child: picture3,
        ),

      ],
    );
  }
}
